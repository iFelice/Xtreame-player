.class public final Lcom/google/android/gms/internal/ads/Ex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/uA;

.field public final b:Lcom/google/android/gms/internal/ads/fw;

.field public final c:Lcom/google/android/gms/internal/ads/fw;

.field public final d:Lcom/google/android/gms/internal/ads/fw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/PA;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 12
    .line 13
    sget-object p1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 14
    .line 15
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ex;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ex;->b:Lcom/google/android/gms/internal/ads/fw;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ex;->c:Lcom/google/android/gms/internal/ads/fw;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ex;->d:Lcom/google/android/gms/internal/ads/fw;

    .line 22
    .line 23
    return-void
.end method
