.class public final synthetic Lcom/google/android/gms/internal/ads/Ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/xa;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/xa;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Ba;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ba;->H:Lcom/google/android/gms/internal/ads/xa;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ba;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ba;->H:Lcom/google/android/gms/internal/ads/xa;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/xa;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
