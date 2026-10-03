.class public final Lcom/google/android/gms/internal/ads/fE;
.super Lcom/google/android/gms/internal/ads/GC;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/GE;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/GE;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fE;->a:Lcom/google/android/gms/internal/ads/GE;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fE;->a:Lcom/google/android/gms/internal/ads/GE;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/xG;->K:Lcom/google/android/gms/internal/ads/xG;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/fE;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/fE;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/fE;->a:Lcom/google/android/gms/internal/ads/GE;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fE;->a:Lcom/google/android/gms/internal/ads/GE;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/XG;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    return p1

    .line 67
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fE;->a:Lcom/google/android/gms/internal/ads/GE;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GE;->a:Lcom/google/android/gms/internal/ads/NG;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v1, v2, v3

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    aput-object v0, v2, v1

    .line 15
    .line 16
    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fE;->a:Lcom/google/android/gms/internal/ads/GE;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v0, v2, :cond_3

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    if-eq v0, v2, :cond_0

    .line 30
    .line 31
    const-string v0, "UNKNOWN"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "CRUNCHY"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "RAW"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "LEGACY"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const-string v0, "TINK"

    .line 44
    .line 45
    :goto_0
    const-string v2, "(typeUrl="

    .line 46
    .line 47
    const-string v3, ", outputPrefixType="

    .line 48
    .line 49
    const-string v4, ")"

    .line 50
    .line 51
    invoke-static {v2, v1, v3, v0, v4}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
