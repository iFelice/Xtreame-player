package it.felixvision.tv.ui.settings.backup

import it.felixvision.tv.data.backup.BackupDirection
import it.felixvision.tv.data.backup.BackupRelayApi
import it.felixvision.tv.data.backup.BackupRelaySession
import it.felixvision.tv.data.backup.BackupRelayStatus
import it.felixvision.tv.data.backup.BackupTransportEnvelope
import it.felixvision.tv.data.pairing.ApiResult

/** Codice e token dimostrativi delle sessioni di backup nei test. */
internal const val BACKUP_TEST_CODE = "123456"
internal const val BACKUP_TEST_POLL_TOKEN = "token-di-prova"

/** Relay finto: risposte programmate e conteggio delle chiamate. */
internal class FakeBackupRelay(
    var createResult: ApiResult<BackupRelaySession> = ApiResult.Ok(
        BackupRelaySession(
            code = BACKUP_TEST_CODE,
            pollToken = BACKUP_TEST_POLL_TOKEN,
            expiresInSeconds = 600,
        ),
    ),
    var uploadResult: ApiResult<Unit> = ApiResult.Ok(Unit),
    statusResults: List<ApiResult<BackupRelayStatus>> = listOf(ApiResult.Ok(BackupRelayStatus.Waiting)),
) : BackupRelayApi {

    val createdDirections = mutableListOf<BackupDirection>()
    var uploadCalls = 0
    var statusCalls = 0
    private val statusQueue = statusResults.toMutableList()

    override suspend fun create(direction: BackupDirection): ApiResult<BackupRelaySession> {
        createdDirections.add(direction)
        return createResult
    }

    override suspend fun upload(
        code: String,
        pollToken: String,
        envelope: BackupTransportEnvelope,
    ): ApiResult<Unit> {
        uploadCalls++
        return uploadResult
    }

    override suspend fun status(code: String, pollToken: String): ApiResult<BackupRelayStatus> {
        statusCalls++
        if (statusQueue.size > 1) return statusQueue.removeAt(0)
        return statusQueue.first()
    }
}
