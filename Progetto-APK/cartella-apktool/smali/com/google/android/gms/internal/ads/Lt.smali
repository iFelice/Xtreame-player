.class public final Lcom/google/android/gms/internal/ads/Lt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/QJ;

.field public final b:Lcom/google/android/gms/internal/ads/QJ;

.field public final c:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Lh;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/NJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Lt;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Lt;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Lt;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/Jt;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Lt;->a:Lcom/google/android/gms/internal/ads/QJ;

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/Lh;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Lh;->a:Lcom/google/android/gms/internal/ads/Kh;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Kh;->a:Landroid/view/ViewGroup;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Lt;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 15
    .line 16
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/content/Context;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Lt;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 23
    .line 24
    check-cast v3, Lcom/google/android/gms/internal/ads/NJ;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v4, Lcom/google/android/gms/internal/ads/Jt;

    .line 31
    .line 32
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Jt;-><init>(Lcom/google/android/gms/internal/ads/re;Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/Set;)V

    .line 33
    .line 34
    .line 35
    return-object v4
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Lt;->a()Lcom/google/android/gms/internal/ads/Jt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
