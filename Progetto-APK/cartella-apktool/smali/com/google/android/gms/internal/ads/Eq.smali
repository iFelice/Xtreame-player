.class public final Lcom/google/android/gms/internal/ads/Eq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pq;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/di;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/gms/internal/ads/hn;

.field public final d:Lcom/google/android/gms/internal/ads/Yv;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/internal/ads/vz;

.field public final g:Lcom/google/android/gms/internal/ads/Cn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/di;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/hn;Lcom/google/android/gms/internal/ads/Yv;Lcom/google/android/gms/internal/ads/vz;Lcom/google/android/gms/internal/ads/Cn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Eq;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Eq;->a:Lcom/google/android/gms/internal/ads/di;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Eq;->e:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Eq;->c:Lcom/google/android/gms/internal/ads/hn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Eq;->d:Lcom/google/android/gms/internal/ads/Yv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Eq;->f:Lcom/google/android/gms/internal/ads/vz;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Eq;->g:Lcom/google/android/gms/internal/ads/Cn;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)LD4/b;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Lv3/c;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, p0, p1, p2, v2}, Lv3/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Eq;->e:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Ov;->s:Lcom/google/android/gms/internal/ads/Rv;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Rv;->a:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method
