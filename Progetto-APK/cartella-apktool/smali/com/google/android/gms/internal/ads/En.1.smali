.class public final synthetic Lcom/google/android/gms/internal/ads/En;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Om;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Om;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/En;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/En;->H:Lcom/google/android/gms/internal/ads/Om;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/En;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/En;->H:Lcom/google/android/gms/internal/ads/Om;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/ads/Fn;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Fn;->a:Lcom/google/android/gms/internal/ads/In;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ljava/util/Map;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Jn;->a(Ljava/util/Map;Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/gms/internal/ads/Fn;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Fn;->a:Lcom/google/android/gms/internal/ads/In;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ljava/util/Map;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Jn;->a(Ljava/util/Map;Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
