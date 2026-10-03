.class public final synthetic Lcom/google/android/gms/internal/ads/vs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/internal/ads/ws;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ws;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/vs;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vs;->b:Lcom/google/android/gms/internal/ads/ws;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/vs;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vs;->b:Lcom/google/android/gms/internal/ads/ws;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/xs;

    .line 10
    .line 11
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/ws;->d:Lcom/google/android/gms/internal/ads/Yv;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Yv;->e:Ll3/d1;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ws;->a()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ws;->c:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/xs;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/xs;

    .line 26
    .line 27
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/ws;->d:Lcom/google/android/gms/internal/ads/Yv;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Yv;->e:Ll3/d1;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ws;->a()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ws;->c:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/xs;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
