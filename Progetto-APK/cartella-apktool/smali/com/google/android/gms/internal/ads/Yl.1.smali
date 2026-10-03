.class public final Lcom/google/android/gms/internal/ads/Yl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/hn;

.field public final b:Lcom/google/android/gms/internal/ads/Tm;

.field public final c:Lcom/google/android/gms/internal/ads/Dh;

.field public final d:Lcom/google/android/gms/internal/ads/Ll;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/hn;Lcom/google/android/gms/internal/ads/Tm;Lcom/google/android/gms/internal/ads/Dh;Lcom/google/android/gms/internal/ads/sl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yl;->a:Lcom/google/android/gms/internal/ads/hn;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Yl;->b:Lcom/google/android/gms/internal/ads/Tm;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Yl;->c:Lcom/google/android/gms/internal/ads/Dh;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Yl;->d:Lcom/google/android/gms/internal/ads/Ll;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 6

    .line 1
    invoke-static {}, Ll3/d1;->l()Ll3/d1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yl;->a:Lcom/google/android/gms/internal/ads/hn;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hn;->a(Ll3/d1;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Qv;)Lcom/google/android/gms/internal/ads/Ef;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/Xl;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Xl;-><init>(Lcom/google/android/gms/internal/ads/Yl;I)V

    .line 25
    .line 26
    .line 27
    const-string v2, "/sendMessageToSdk"

    .line 28
    .line 29
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Ef;->L0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/google/android/gms/internal/ads/Xl;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Xl;-><init>(Lcom/google/android/gms/internal/ads/Yl;I)V

    .line 36
    .line 37
    .line 38
    const-string v2, "/adMuted"

    .line 39
    .line 40
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Ef;->L0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lcom/google/android/gms/internal/ads/Xl;

    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/Xl;-><init>(Lcom/google/android/gms/internal/ads/Yl;I)V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Yl;->b:Lcom/google/android/gms/internal/ads/Tm;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v4, Lcom/google/android/gms/internal/ads/Sm;

    .line 60
    .line 61
    const-string v5, "/loadHtml"

    .line 62
    .line 63
    invoke-direct {v4, v3, v1, v5, v2}, Lcom/google/android/gms/internal/ads/Sm;-><init>(Lcom/google/android/gms/internal/ads/Tm;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/ads/Tm;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lcom/google/android/gms/internal/ads/Xl;

    .line 75
    .line 76
    const/4 v4, 0x3

    .line 77
    invoke-direct {v2, p0, v4}, Lcom/google/android/gms/internal/ads/Xl;-><init>(Lcom/google/android/gms/internal/ads/Yl;I)V

    .line 78
    .line 79
    .line 80
    new-instance v4, Lcom/google/android/gms/internal/ads/Sm;

    .line 81
    .line 82
    const-string v5, "/showOverlay"

    .line 83
    .line 84
    invoke-direct {v4, v3, v1, v5, v2}, Lcom/google/android/gms/internal/ads/Sm;-><init>(Lcom/google/android/gms/internal/ads/Tm;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/ads/Tm;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Lcom/google/android/gms/internal/ads/Xl;

    .line 96
    .line 97
    const/4 v4, 0x4

    .line 98
    invoke-direct {v2, p0, v4}, Lcom/google/android/gms/internal/ads/Xl;-><init>(Lcom/google/android/gms/internal/ads/Yl;I)V

    .line 99
    .line 100
    .line 101
    new-instance v4, Lcom/google/android/gms/internal/ads/Sm;

    .line 102
    .line 103
    const-string v5, "/hideOverlay"

    .line 104
    .line 105
    invoke-direct {v4, v3, v1, v5, v2}, Lcom/google/android/gms/internal/ads/Sm;-><init>(Lcom/google/android/gms/internal/ads/Tm;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/ads/Tm;->c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0
.end method
