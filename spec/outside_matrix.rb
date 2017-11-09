describe 'Neo' do
  it 'is in real world' do
    in_the_matrix = matrix?

    expect(in_the_matrix).to be false
  end
end

describe 'Connection' do
  it 'exist' do
    connection = exist_connection?

    expect(connection).to be true
  end

  it 'workdir is /home/matrix' do
    up_connection

    working_connection = load_working_connection

    expect(working_connection).to eq "/home/matrix\n"
  end
end
