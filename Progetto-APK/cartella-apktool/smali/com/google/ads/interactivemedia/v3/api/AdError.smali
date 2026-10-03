.class public final Lcom/google/ads/interactivemedia/v3/api/AdError;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;,
        Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->getErrorCodeByNumber(I)Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/api/AdError;->zzb:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/api/AdError;->zza:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/AdError;->zza:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    return-object v0
.end method

.method public getErrorCodeNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/AdError;->zza:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->getErrorNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getErrorType()Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/AdError;->zzb:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/AdError;->zza:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/api/AdError;->zzb:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "AdError [errorType: "

    .line 18
    .line 19
    const-string v4, ", errorCode: "

    .line 20
    .line 21
    const-string v5, ", message: "

    .line 22
    .line 23
    invoke-static {v3, v1, v4, v0, v5}, Lcom/google/protobuf/U2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "]"

    .line 28
    .line 29
    invoke-static {v0, v2, v1}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
