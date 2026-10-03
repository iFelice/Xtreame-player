.class public final synthetic Lcom/google/android/gms/internal/ads/LL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/oL;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/oL;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/LL;->G:Lcom/google/android/gms/internal/ads/oL;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/LL;->G:Lcom/google/android/gms/internal/ads/oL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oL;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/ads/PL;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/sK;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sK;->G:Lcom/google/android/gms/internal/ads/vK;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vK;->p:Lcom/google/android/gms/internal/ads/cL;

    .line 17
    .line 18
    check-cast v0, Lcom/google/android/gms/internal/ads/tL;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tL;->l()Lcom/google/android/gms/internal/ads/dL;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/google/android/gms/internal/ads/mL;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/mL;-><init>(Lcom/google/android/gms/internal/ads/jL;)V

    .line 28
    .line 29
    .line 30
    const/16 v3, 0x3f2

    .line 31
    .line 32
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
