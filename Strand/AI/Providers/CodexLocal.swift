import Foundation

/// Personal-only transport placeholder for a future Codex app-server bridge.
struct CodexLocalClient: AIProviderClient {

    func send(
        key: String,
        model: String,
        systemPrompt: String,
        messages: [(role: ChatMessage.Role, content: String)],
        session: URLSession
    ) async throws -> String {
        throw AICoachError.codexLocalUnavailable
    }

    func fetchModels(key: String, session: URLSession) async throws -> [String] {
        AIProvider.codexLocal.modelOptions
    }
}
