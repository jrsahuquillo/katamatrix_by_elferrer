describe 'Neo' do
  it 'is in matrix' do
    in_the_matrix = matrix?

    expect(in_the_matrix).to be true
  end
end

describe 'User' do
  it 'is Neo' do
    user = load_user_environment

    expect(user).to eq "Neo"
  end
end
