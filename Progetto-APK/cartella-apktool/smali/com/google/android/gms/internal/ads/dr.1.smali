.class public final Lcom/google/android/gms/internal/ads/dr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;

.field public final c:Lcom/google/android/gms/internal/ads/QJ;

.field public final d:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dr;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dr;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dr;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dr;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/br;
    .locals 7

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 2
    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dr;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v2, v0

    .line 13
    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dr;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v3, v0

    .line 22
    check-cast v3, Lcom/google/android/gms/internal/ads/zi;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dr;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v4, v0

    .line 31
    check-cast v4, Lcom/google/android/gms/internal/ads/mr;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dr;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v5, v0

    .line 40
    check-cast v5, Lcom/google/android/gms/internal/ads/hx;

    .line 41
    .line 42
    new-instance v6, Lcom/google/android/gms/internal/ads/br;

    .line 43
    .line 44
    move-object v0, v6

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/br;-><init>(Lcom/google/android/gms/internal/ads/re;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zi;Lcom/google/android/gms/internal/ads/mr;Lcom/google/android/gms/internal/ads/hx;)V

    .line 46
    .line 47
    .line 48
    return-object v6
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dr;->a()Lcom/google/android/gms/internal/ads/br;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
