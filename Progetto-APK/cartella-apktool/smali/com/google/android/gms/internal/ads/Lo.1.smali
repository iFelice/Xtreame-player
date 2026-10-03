.class public final Lcom/google/android/gms/internal/ads/Lo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;

.field public final c:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/Uo;Lcom/google/android/gms/internal/ads/Ch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lo;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lo;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Lo;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/Ko;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lo;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 11
    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v4, Lcom/google/android/gms/internal/ads/se;->b:Lcom/google/android/gms/internal/ads/re;

    .line 16
    .line 17
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lo;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/Uo;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Uo;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 25
    .line 26
    check-cast v0, Lcom/google/android/gms/internal/ads/jg;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Lcom/google/android/gms/internal/ads/To;

    .line 36
    .line 37
    invoke-direct {v5, v0, v3}, Lcom/google/android/gms/internal/ads/To;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/re;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lo;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->B(Lcom/google/android/gms/internal/ads/QJ;)Lcom/google/android/gms/internal/ads/Ag;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HJ;->a(Lcom/google/android/gms/internal/ads/MJ;)Lcom/google/android/gms/internal/ads/EJ;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/ads/Ko;

    .line 51
    .line 52
    move-object v1, v0

    .line 53
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Ko;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/To;Lcom/google/android/gms/internal/ads/EJ;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Lo;->a()Lcom/google/android/gms/internal/ads/Ko;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
