.class public final Lcom/google/android/gms/internal/ads/uk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/gms/internal/ads/QJ;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc4/y;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/uk;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uk;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uk;->b:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/tk;Lcom/google/android/gms/internal/ads/NJ;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/uk;->a:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uk;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uk;->b:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/uk;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uk;->b:Lcom/google/android/gms/internal/ads/QJ;

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
    check-cast v0, Lcom/google/android/gms/internal/ads/On;

    .line 13
    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lc4/y;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/re;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_0
    check-cast v1, Lcom/google/android/gms/internal/ads/NJ;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NJ;->b()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uk;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lcom/google/android/gms/internal/ads/tk;

    .line 36
    .line 37
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/tk;->p:Lcom/google/android/gms/internal/ads/rj;

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    new-instance v2, Lcom/google/android/gms/internal/ads/rj;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Ljava/util/Set;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/tk;->p:Lcom/google/android/gms/internal/ads/rj;

    .line 47
    .line 48
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/tk;->p:Lcom/google/android/gms/internal/ads/rj;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
