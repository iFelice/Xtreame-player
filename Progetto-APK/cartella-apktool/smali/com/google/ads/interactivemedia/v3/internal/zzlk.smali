.class public final Lcom/google/ads/interactivemedia/v3/internal/zzlk;
.super Lcom/google/ads/interactivemedia/v3/internal/zzln;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzia;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzii;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzln;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzie;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzie;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzm;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 10
    .line 11
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzii;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzii;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzia;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzii;

    .line 17
    .line 18
    return-void
.end method

.method private final zzt(LR3/a;LR3/a;Z)LR3/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Landroid/net/Uri;

    .line 7
    .line 8
    invoke-static {p2}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Landroid/content/Context;

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzii;

    .line 17
    .line 18
    invoke-virtual {p3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzii;->zzb(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzii;

    .line 24
    .line 25
    invoke-virtual {p3, p1, p2, v0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzii;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    new-instance p2, LR3/b;

    .line 30
    .line 31
    invoke-direct {p2, p1}, LR3/b;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzij; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-object p2

    .line 35
    :catch_0
    return-object v0
.end method


# virtual methods
.method public final zzb()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzie;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzie;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzih;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzhx;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    :cond_1
    :goto_0
    return v2
.end method

.method public final zzc(LR3/a;LR3/a;)LR3/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zzt(LR3/a;LR3/a;Z)LR3/a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final zzd(LR3/a;LR3/a;)LR3/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zzt(LR3/a;LR3/a;Z)LR3/a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final zze(LR3/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 8
    .line 9
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzie;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final zzf(LR3/a;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zzg(LR3/a;[B)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final zzg(LR3/a;[B)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzg(Landroid/content/Context;[B)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final zzh(LR3/a;LR3/a;LR3/a;LR3/a;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p2}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p3}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    check-cast p3, Landroid/view/View;

    .line 18
    .line 19
    invoke-static {p4}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    check-cast p4, Landroid/app/Activity;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public final zzi(LR3/a;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 8
    .line 9
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzie;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzie;->zzg(Landroid/content/Context;[B)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    const-string v0, "ms"

    return-object v0
.end method

.method public final zzk(LR3/a;LR3/a;LR3/a;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p2}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/view/View;

    .line 12
    .line 13
    invoke-static {p3}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    check-cast p3, Landroid/app/Activity;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 20
    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final zzl(LR3/a;)V
    .locals 1

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/MotionEvent;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzii;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzii;->zzc(Landroid/view/MotionEvent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzm(LR3/a;)V
    .locals 1

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzn(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzii;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzii;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzii;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzii;->zze(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzp(LR3/a;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzii;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzii;->zzg(Landroid/net/Uri;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final zzq(LR3/a;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzii;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzii;->zzf(Landroid/net/Uri;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final zzr()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzq()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzlk;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzs()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
