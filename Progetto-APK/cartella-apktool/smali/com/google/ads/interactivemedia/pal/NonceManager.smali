.class public final Lcom/google/ads/interactivemedia/pal/NonceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/pal/A0;

.field static final zzb:Lcom/google/android/gms/internal/pal/A0;

.field public static final synthetic zzc:I


# instance fields
.field private final zzd:Landroid/content/Context;

.field private final zze:Ljava/util/concurrent/ExecutorService;

.field private final zzf:Lg4/h;

.field private final zzg:Lcom/google/ads/interactivemedia/pal/zzax;

.field private final zzh:Lcom/google/ads/interactivemedia/pal/zzav;

.field private final zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/A0;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    const-wide/16 v2, 0x3

    .line 6
    .line 7
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/pal/y4;->d(IJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/pal/A0;-><init>(J)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zza:Lcom/google/android/gms/internal/pal/A0;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/pal/A0;

    .line 17
    .line 18
    const-wide/16 v2, 0x5

    .line 19
    .line 20
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/pal/y4;->d(IJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/pal/A0;-><init>(J)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzb:Lcom/google/android/gms/internal/pal/A0;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lg4/h;Lcom/google/ads/interactivemedia/pal/zzax;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzj:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzd:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zze:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzf:Lg4/h;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzg:Lcom/google/ads/interactivemedia/pal/zzax;

    .line 14
    .line 15
    new-instance p1, Lcom/google/ads/interactivemedia/pal/zzav;

    .line 16
    .line 17
    sget-object p3, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzb:Lcom/google/android/gms/internal/pal/A0;

    .line 18
    .line 19
    invoke-direct {p1, p2, p3}, Lcom/google/ads/interactivemedia/pal/zzav;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/pal/A0;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzh:Lcom/google/ads/interactivemedia/pal/zzav;

    .line 23
    .line 24
    iput-object p6, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzi:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/ads/interactivemedia/pal/NonceManager;)Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzd:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v0, p0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Landroid/app/Activity;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/ads/interactivemedia/pal/NonceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzd:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic zzh(Lcom/google/ads/interactivemedia/pal/NonceManager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzg:Lcom/google/ads/interactivemedia/pal/zzax;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    iget-object p0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzk:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, v1, p0}, Lcom/google/ads/interactivemedia/pal/zzax;->zza(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public sendAdClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzf:Lg4/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zze:Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    new-instance v2, Lcom/google/ads/interactivemedia/pal/zzan;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/pal/zzan;-><init>(Lcom/google/ads/interactivemedia/pal/NonceManager;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lg4/h;->d(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/google/ads/interactivemedia/pal/NonceManager;->zza:Lcom/google/android/gms/internal/pal/A0;

    .line 15
    .line 16
    iget-wide v1, v1, Lcom/google/android/gms/internal/pal/C0;->G:J

    .line 17
    .line 18
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->q(Lg4/h;JLjava/util/concurrent/TimeUnit;)Lg4/r;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zze:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    new-instance v2, Lcom/google/ads/interactivemedia/pal/zzao;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/pal/zzao;-><init>(Lcom/google/ads/interactivemedia/pal/NonceManager;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lg4/r;->d(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public sendAdImpression()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public sendAdTouch(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzf:Lg4/h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zze:Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    new-instance v2, Lcom/google/ads/interactivemedia/pal/zzal;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Lcom/google/ads/interactivemedia/pal/zzal;-><init>(Landroid/view/MotionEvent;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lg4/h;->d(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zza:Lcom/google/android/gms/internal/pal/A0;

    .line 15
    .line 16
    iget-wide v0, v0, Lcom/google/android/gms/internal/pal/C0;->G:J

    .line 17
    .line 18
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->q(Lg4/h;JLjava/util/concurrent/TimeUnit;)Lg4/r;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zze:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    new-instance v1, Lcom/google/ads/interactivemedia/pal/zzam;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/pal/zzam;-><init>(Lcom/google/ads/interactivemedia/pal/NonceManager;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lg4/r;->d(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public sendPlaybackEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzh:Lcom/google/ads/interactivemedia/pal/zzav;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/pal/zzav;->zzd()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzj:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzj:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzg:Lcom/google/ads/interactivemedia/pal/zzax;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzk:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/pal/zzax;->zza(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public sendPlaybackStart()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzj:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzj:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzf:Lg4/h;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zze:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    new-instance v2, Lcom/google/ads/interactivemedia/pal/zzas;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/pal/zzas;-><init>(Lcom/google/ads/interactivemedia/pal/NonceManager;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lg4/h;->d(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/google/ads/interactivemedia/pal/NonceManager;->zza:Lcom/google/android/gms/internal/pal/A0;

    .line 23
    .line 24
    iget-wide v1, v1, Lcom/google/android/gms/internal/pal/C0;->G:J

    .line 25
    .line 26
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->q(Lg4/h;JLjava/util/concurrent/TimeUnit;)Lg4/r;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zze:Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    new-instance v2, Lcom/google/ads/interactivemedia/pal/zzap;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/google/ads/interactivemedia/pal/zzap;-><init>(Lcom/google/ads/interactivemedia/pal/NonceManager;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lg4/r;->d(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/google/ads/interactivemedia/pal/zzaq;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/pal/zzaq;-><init>(Lcom/google/ads/interactivemedia/pal/NonceManager;)V

    .line 45
    .line 46
    .line 47
    sget-object v2, Lg4/j;->a:Lg4/q;

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lg4/r;->d(Ljava/util/concurrent/Executor;Lg4/b;)Lg4/r;

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final zzc(Lg4/h;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lg4/h;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/pal/b2;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzd:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, LR3/b;

    .line 13
    .line 14
    invoke-direct {v1, v0}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/b2;->a:Lcom/google/android/gms/internal/pal/f2;

    .line 20
    .line 21
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/pal/f2;->zze(LR3/a;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final synthetic zzd(Lg4/h;)Ljava/lang/Void;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lg4/h;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lg4/h;->f()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v1

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzg:Lcom/google/ads/interactivemedia/pal/zzax;

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    invoke-virtual {v0, v2, p1}, Lcom/google/ads/interactivemedia/pal/zzax;->zza(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public final synthetic zze(Lg4/h;)Ljava/lang/Void;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzg:Lcom/google/ads/interactivemedia/pal/zzax;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/pal/zzax;->zza(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v1
.end method

.method public final synthetic zzf(Lg4/h;)Ljava/lang/Void;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lg4/h;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lg4/h;->f()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v1

    .line 16
    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzk:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzg:Lcom/google/ads/interactivemedia/pal/zzax;

    .line 19
    .line 20
    const/4 v2, 0x6

    .line 21
    invoke-virtual {v0, v2, p1}, Lcom/google/ads/interactivemedia/pal/zzax;->zza(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public final synthetic zzg(Lg4/h;)Ljava/lang/Void;
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzj:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/pal/NonceManager;->zzh:Lcom/google/ads/interactivemedia/pal/zzav;

    .line 6
    .line 7
    new-instance v0, Lcom/google/ads/interactivemedia/pal/zzar;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/pal/zzar;-><init>(Lcom/google/ads/interactivemedia/pal/NonceManager;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/pal/zzav;->zzc(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method
