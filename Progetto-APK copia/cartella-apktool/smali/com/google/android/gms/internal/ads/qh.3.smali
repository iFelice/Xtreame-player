.class public final Lcom/google/android/gms/internal/ads/qh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sj;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Qv;

.field public final H:Lcom/google/android/gms/internal/ads/Tv;

.field public final I:Lcom/google/android/gms/internal/ads/hx;

.field public final J:Lcom/google/android/gms/internal/ads/ix;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/hx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qh;->H:Lcom/google/android/gms/internal/ads/Tv;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qh;->J:Lcom/google/android/gms/internal/ads/ix;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/qh;->I:Lcom/google/android/gms/internal/ads/hx;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/Qv;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qh;->G:Lcom/google/android/gms/internal/ads/Qv;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final y(Ll3/z0;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qh;->G:Lcom/google/android/gms/internal/ads/Qv;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Qv;->a:Ljava/util/List;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qh;->I:Lcom/google/android/gms/internal/ads/hx;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qh;->H:Lcom/google/android/gms/internal/ads/Tv;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/hx;->a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/util/List;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qh;->J:Lcom/google/android/gms/internal/ads/ix;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ix;->b(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
