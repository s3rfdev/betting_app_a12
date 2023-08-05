import '../models/match_details/match_details_model.dart';
import '../models/matches/matches.dart';
import 'api/matches_api.dart';

class Repo {
  Future<Matches> getMatches(
      {required String sport, required String date}) async {
    return MatchesApi.getMatches(sport: sport, date: date);
  }

  Future<MatchDetailsModel> getMatcheDetails({
    required String sport,
    required String id,
    required String? countryLink,
    required String? league,
  }) async {
    return MatchesApi.getMatchDetails(
      sport: sport,
      id: id,
      countryLink: countryLink,
      league: league,
    );
  }
}
