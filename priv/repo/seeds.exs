# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Jibber.Repo.insert!(%Jibber.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
Jibber.Repo.delete_all Jibber.Coherence.User

Jibber.Coherence.User.changeset(%Jibber.Coherence.User{}, %{name: "Test User", email: "testuser@example.com", password: "secret", password_confirmation: "secret"})
|> Jibber.Repo.insert!
