.class public final synthetic Lcom/google/android/gms/internal/ads/sh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/uh;

.field public final synthetic I:I

.field public final synthetic J:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/uh;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/sh;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sh;->H:Lcom/google/android/gms/internal/ads/uh;

    iput p2, p0, Lcom/google/android/gms/internal/ads/sh;->I:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/sh;->J:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/sh;->G:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/sh;->J:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/sh;->I:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sh;->H:Lcom/google/android/gms/internal/ads/uh;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/sh;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v0, v3, v2, v1, v4}, Lcom/google/android/gms/internal/ads/sh;-><init>(Lcom/google/android/gms/internal/ads/uh;III)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/uh;->H:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/ads/uh;->m(II)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
