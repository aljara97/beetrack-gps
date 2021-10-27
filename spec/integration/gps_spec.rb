require 'swagger_helper'

describe 'GPS API' do
  path '/api/v1/vehicles/create' do
    post 'Creates a vehicle' do
      tags 'Vehicle'
      consumes 'application/json', 'application/xml'
      parameter name: :vehicle, in: :body, schema: {
        type: :object,
        properties: {
          vehicle_identifier: { type: :string }
        },
        required: [ 'vehicle_identifier' ]
      }

      response '201', 'Created' do
        let(:vehicle) { { vehicle_identifier: 'H13-4' } }
        run_test!
      end

      response '400', 'invalid request' do
        let(:vehicle) { {} }
        run_test!
      end
    end
  end

  path '/api/v1/gps' do
    post 'Creates a gps point' do
      tags 'GPS'
      consumes 'application/json', 'application/xml'
      parameter name: :gps_point, in: :body, schema: {
        type: :object,
        properties: {
          vehicle_identifier: { type: :string },
          latitude: { type: :float },
          longitude: { type: :float }
        },
        required: [ 'vehicle_identifier', 'latitude', 'longitude' ]
      }

      response '201', 'Created' do
        let(:gps_point) { { vehicle_identifier: 'H13-4', latitude: 51.4, longitude: 43.2 } }
        run_test!
      end

      response '400', 'invalid request' do
        let(:gps_point) { {} }
        run_test!
      end
    end
  end

end

=begin
  path 'api/v1/vehicles' do
    get 'Retrieves all vehicles in app'
      tags 'Vehicle'
      response '200', 'Succesful' do
        schema type: :array,
        properties: {
          id: { type: :integer },
          vehicle_identifier: { type: :string },
          created_at: { type: :datetime},
          updated_at: { type: :datetime}
        }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
  end
=end