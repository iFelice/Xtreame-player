.class public final Lcom/google/android/gms/internal/ads/ys;
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
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/jj;Lcom/google/android/gms/internal/ads/Lh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ys;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ys;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ys;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ws;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->a:Lcom/google/android/gms/internal/ads/QJ;

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
    check-cast v2, Lcom/google/android/gms/internal/ads/jC;

    .line 9
    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 11
    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/jg;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/gms/internal/ads/jj;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jj;->a()Lcom/google/android/gms/internal/ads/Yv;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->d:Lcom/google/android/gms/internal/ads/QJ;

    .line 32
    .line 33
    check-cast v0, Lcom/google/android/gms/internal/ads/Lh;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Lh;->a:Lcom/google/android/gms/internal/ads/Kh;

    .line 36
    .line 37
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Kh;->a:Landroid/view/ViewGroup;

    .line 38
    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/ws;

    .line 40
    .line 41
    move-object v1, v0

    .line 42
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ws;-><init>(Lcom/google/android/gms/internal/ads/jC;Lcom/google/android/gms/internal/ads/re;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Yv;Landroid/view/ViewGroup;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ys;->a()Lcom/google/android/gms/internal/ads/ws;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
