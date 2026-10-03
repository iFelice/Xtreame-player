.class public final Lv3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/IJ;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/google/android/gms/internal/ads/QJ;

.field public final c:Lcom/google/android/gms/internal/ads/QJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/MJ;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lv3/o;->a:I

    .line 6
    iput-object p1, p0, Lv3/o;->b:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p2, p0, Lv3/o;->c:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/jg;Lcom/google/android/gms/internal/ads/rg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv3/o;->a:I

    .line 3
    iput-object p1, p0, Lv3/o;->b:Lcom/google/android/gms/internal/ads/QJ;

    iput-object p2, p0, Lv3/o;->c:Lcom/google/android/gms/internal/ads/QJ;

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lv3/o;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lv3/o;->c:Lcom/google/android/gms/internal/ads/QJ;

    .line 4
    .line 5
    iget-object v2, p0, Lv3/o;->b:Lcom/google/android/gms/internal/ads/QJ;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lcom/google/android/gms/internal/ads/jg;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/google/android/gms/internal/ads/In;

    .line 21
    .line 22
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lv3/x;

    .line 28
    .line 29
    invoke-direct {v3, v0, v1, v2}, Lv3/x;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/In;Lcom/google/android/gms/internal/ads/re;)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :pswitch_0
    check-cast v2, Lcom/google/android/gms/internal/ads/jg;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jg;->a()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->a:Lcom/google/android/gms/internal/ads/J7;

    .line 40
    .line 41
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 42
    .line 43
    iget-object v2, v2, Ll3/q;->a:LF0/u;

    .line 44
    .line 45
    invoke-virtual {v2}, LF0/u;->b()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v1, Lcom/google/android/gms/internal/ads/rg;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rg;->a()Lp3/a;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v3, Lv3/b;

    .line 56
    .line 57
    invoke-direct {v3, v0, v2, v1}, Lv3/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lp3/a;)V

    .line 58
    .line 59
    .line 60
    return-object v3

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
