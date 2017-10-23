class GetRepresentatives
  def initialize
    @api_key = configatron.propublica_api
  end

  def api_call(congress, chamber)
    uri = URI.parse("https://api.propublica.org/congress/v1/#{congress}/#{chamber}/members.json")

    request = Net::HTTP::Get.new(uri)
    request["X-Api-Key"] = @api_key
    req_options = {
      use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end
  end

  def house
    house_response = JSON.parse(api_call(115, 'house').body)
    data = house_response['results'][0]['members']

    data.each do |member|
      new_rep = Representative.find_or_create_by!(:propublica_id => member['id'])

      new_rep.update_attributes(create_data_hash(member))
    end
  end

  def senate
    senate_response = JSON.parse(api_call(115, 'senate').body)
    data = senate_response['results'][0]['members']

    data.each do |member|
      new_rep = Representative.find_or_create_by!(:propublica_id => member['id'])

      new_rep.update_attributes(create_data_hash(member))
    end
  end

  private

  def create_data_hash(raw_data)
    {
      :first_name => raw_data['first_name'],
      :middle_name => raw_data['middle_name'],
      :last_name => raw_data['last_name'],
      :propublica_uri => raw_data['api_uri'],
      :date_of_birth => raw_data['date_of_birth'],
      :party => raw_data['party'],
      :leadership_role => raw_data['leadership_role'],
      :twitter_account => raw_data['twitter_account'],
      :facebook_account => raw_data['facebook_account'],
      :youtube_account => raw_data['youtube_account'],
      :website_url => raw_data['url'],
      :in_office => raw_data['in_office'],
      :dw_nominate => raw_data['dw_nominate'],
      :seniority => raw_data['seniority'],
      :next_election => raw_data['next_election'],
      :total_votes => raw_data['total_votes'],
      :missed_votes => raw_data['missed_votes'],
      :total_present => raw_data['total_present'],
      :office_address => raw_data['office'],
      :office_phone => raw_data['phone'],
      :office_fax => raw_data['fax'],
      :state => raw_data['state'],
      :senate_class => raw_data['senate_class'],
      :district => raw_data['district'],
      :at_large => raw_data['at_large'],
      :state_rank => raw_data['state_rank'],
      :lis_id => raw_data['lis_id'],
      :missed_votes_pct => raw_data['missed_votes_pct'],
      :votes_with_party_pct => raw_data['votes_with_party_pct']
    }
  end
end
