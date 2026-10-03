.class public final Lcom/google/android/gms/internal/ads/xD;
.super Lcom/google/android/gms/internal/ads/OC;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/wD;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/ads/vD;

.field public final d:Lcom/google/android/gms/internal/ads/OC;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wD;Ljava/lang/String;Lcom/google/android/gms/internal/ads/vD;Lcom/google/android/gms/internal/ads/OC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xD;->a:Lcom/google/android/gms/internal/ads/wD;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xD;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xD;->c:Lcom/google/android/gms/internal/ads/vD;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xD;->d:Lcom/google/android/gms/internal/ads/OC;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/wD;->c:Lcom/google/android/gms/internal/ads/wD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xD;->a:Lcom/google/android/gms/internal/ads/wD;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/xD;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/xD;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xD;->c:Lcom/google/android/gms/internal/ads/vD;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xD;->c:Lcom/google/android/gms/internal/ads/vD;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xD;->d:Lcom/google/android/gms/internal/ads/OC;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xD;->d:Lcom/google/android/gms/internal/ads/OC;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/xD;->b:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xD;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xD;->a:Lcom/google/android/gms/internal/ads/wD;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xD;->a:Lcom/google/android/gms/internal/ads/wD;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xD;->d:Lcom/google/android/gms/internal/ads/OC;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xD;->a:Lcom/google/android/gms/internal/ads/wD;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xD;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/xD;->c:Lcom/google/android/gms/internal/ads/vD;

    .line 8
    .line 9
    const/4 v4, 0x5

    .line 10
    new-array v4, v4, [Ljava/lang/Object;

    .line 11
    .line 12
    const-class v5, Lcom/google/android/gms/internal/ads/xD;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    aput-object v5, v4, v6

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    aput-object v2, v4, v5

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    aput-object v3, v4, v2

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    aput-object v0, v4, v2

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    aput-object v1, v4, v0

    .line 28
    .line 29
    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xD;->c:Lcom/google/android/gms/internal/ads/vD;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xD;->d:Lcom/google/android/gms/internal/ads/OC;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xD;->a:Lcom/google/android/gms/internal/ads/wD;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v4, "LegacyKmsEnvelopeAead Parameters (kekUri: "

    .line 22
    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xD;->b:Ljava/lang/String;

    .line 27
    .line 28
    const-string v5, ", dekParsingStrategy: "

    .line 29
    .line 30
    const-string v6, ", dekParametersForNewKeys: "

    .line 31
    .line 32
    invoke-static {v3, v4, v5, v0, v6}, Lt/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", variant: "

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
