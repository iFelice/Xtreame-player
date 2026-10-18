.class public final Lcom/google/android/gms/internal/ads/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/D1;

.field public final b:Lcom/google/android/gms/internal/ads/G1;

.field public final c:Lcom/google/android/gms/internal/ads/e0;

.field public final d:LW0/M;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/D1;Lcom/google/android/gms/internal/ads/G1;Lcom/google/android/gms/internal/ads/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/G1;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/z1;->c:Lcom/google/android/gms/internal/ads/e0;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/D1;->f:Lcom/google/android/gms/internal/ads/p0;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 13
    .line 14
    const-string p2, "audio/true-hd"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, LW0/M;

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-direct {p1, p2}, LW0/M;-><init>(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z1;->d:LW0/M;

    .line 31
    .line 32
    return-void
.end method
