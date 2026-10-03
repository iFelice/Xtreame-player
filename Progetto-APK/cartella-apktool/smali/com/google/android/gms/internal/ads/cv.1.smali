.class public final synthetic Lcom/google/android/gms/internal/ads/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/dv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dv;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/cv;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cv;->H:Lcom/google/android/gms/internal/ads/dv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/cv;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cv;->H:Lcom/google/android/gms/internal/ads/dv;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dv;->G:Lcom/google/android/gms/internal/ads/fg;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fg;->a()Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/cv;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/cv;-><init>(Lcom/google/android/gms/internal/ads/dv;I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    const/4 v0, 0x5

    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dv;->z3(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
