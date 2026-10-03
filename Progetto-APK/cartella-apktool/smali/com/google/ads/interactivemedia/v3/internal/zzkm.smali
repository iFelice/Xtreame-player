.class public final Lcom/google/ads/interactivemedia/v3/internal/zzkm;
.super Lcom/google/ads/interactivemedia/v3/internal/zzkx;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;II)V
    .locals 7

    .line 1
    const-string v3, "LGTID+NGga+m4ngnAg8xV1SySs8i6u03pUOYhiZVnnQ="

    .line 2
    .line 3
    const/16 v6, 0x49

    .line 4
    .line 5
    const-string v2, "WJxg1URLvX6rcpqRUIsbqvQQ1IP2DTbqCnO94k2HzDT20g/TX5PQfsUm+ZqlzVLQ"

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzkx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/zzan;II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zze:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzjj;

    .line 7
    .line 8
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzjj;->zzb()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 27
    .line 28
    if-eq v1, v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x2

    .line 32
    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzaf(I)Lcom/google/ads/interactivemedia/v3/internal/zzan;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkx;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzan;->zzaf(I)Lcom/google/ads/interactivemedia/v3/internal/zzan;

    .line 40
    .line 41
    .line 42
    return-void
.end method
