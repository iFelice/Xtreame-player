.class public final Lcom/google/android/gms/internal/ads/Mu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/gms/internal/ads/jC;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/re;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Mu;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mu;->b:Lcom/google/android/gms/internal/ads/jC;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/re;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/Mu;->a:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mu;->b:Lcom/google/android/gms/internal/ads/jC;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Mu;->a:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x33

    return v0

    :pswitch_0
    const/16 v0, 0x2d

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()LD4/b;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Mu;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mu;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/H7;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/H7;-><init>(I)V

    .line 12
    .line 13
    .line 14
    check-cast v1, Lcom/google/android/gms/internal/ads/IB;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/H7;

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/H7;-><init>(II)V

    .line 26
    .line 27
    .line 28
    check-cast v1, Lcom/google/android/gms/internal/ads/IB;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
