.class public final Lcom/google/android/gms/internal/ads/Ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nr;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xi;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ai;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ai;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zzr()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ai;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, LD4/b;

    .line 18
    .line 19
    new-instance v2, Lcom/google/android/gms/internal/ads/Aa;

    .line 20
    .line 21
    const/16 v3, 0x14

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/Aa;-><init>(II)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/google/android/gms/internal/ads/XB;->G:Lcom/google/android/gms/internal/ads/XB;

    .line 28
    .line 29
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
