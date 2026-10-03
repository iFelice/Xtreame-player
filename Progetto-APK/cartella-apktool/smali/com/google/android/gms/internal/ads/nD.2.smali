.class public final Lcom/google/android/gms/internal/ads/nD;
.super Lcom/google/android/gms/internal/ads/OC;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/mD;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mD;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nD;->a:Lcom/google/android/gms/internal/ads/mD;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/mD;->d:Lcom/google/android/gms/internal/ads/mD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nD;->a:Lcom/google/android/gms/internal/ads/mD;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/nD;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/nD;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/nD;->a:Lcom/google/android/gms/internal/ads/mD;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nD;->a:Lcom/google/android/gms/internal/ads/mD;

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nD;->a:Lcom/google/android/gms/internal/ads/mD;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-class v2, Lcom/google/android/gms/internal/ads/nD;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v0, v1, v2

    .line 13
    .line 14
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nD;->a:Lcom/google/android/gms/internal/ads/mD;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mD;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "ChaCha20Poly1305 Parameters (variant: "

    .line 6
    .line 7
    const-string v2, ")"

    .line 8
    .line 9
    invoke-static {v1, v0, v2}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
