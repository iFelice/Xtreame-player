.class public final Lo3/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lo3/D;->a:I

    .line 3
    iput-object p1, p0, Lo3/D;->b:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/MJ;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lo3/D;->a:I

    iput-object p1, p0, Lo3/D;->b:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lo3/D;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lo3/D;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/In;

    .line 13
    .line 14
    new-instance v1, Lv3/C;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lv3/C;-><init>(Lcom/google/android/gms/internal/ads/In;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :pswitch_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lv3/D;

    .line 25
    .line 26
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/google/android/gms/internal/ads/Lk;

    .line 32
    .line 33
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Lk;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 34
    .line 35
    .line 36
    return-object v2

    .line 37
    :pswitch_1
    check-cast v1, Lcom/google/android/gms/internal/ads/jg;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lo3/C;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lo3/C;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
