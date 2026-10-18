.class public final Lcom/google/android/gms/internal/ads/gr;
.super Lcom/google/android/gms/internal/ads/fr;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/fg;

.field public final b:Lcom/google/android/gms/internal/ads/dj;

.field public final c:Lcom/google/android/gms/internal/ads/tk;

.field public final d:Lcom/google/android/gms/internal/ads/mr;

.field public final e:Lcom/google/android/gms/internal/ads/uq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fg;Lcom/google/android/gms/internal/ads/dj;Lcom/google/android/gms/internal/ads/tk;Lcom/google/android/gms/internal/ads/mr;Lcom/google/android/gms/internal/ads/uq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gr;->a:Lcom/google/android/gms/internal/ads/fg;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gr;->b:Lcom/google/android/gms/internal/ads/dj;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gr;->c:Lcom/google/android/gms/internal/ads/tk;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/gr;->d:Lcom/google/android/gms/internal/ads/mr;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/gr;->e:Lcom/google/android/gms/internal/ads/uq;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/Yv;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Tv;)Lcom/google/android/gms/internal/ads/Fw;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gr;->b:Lcom/google/android/gms/internal/ads/dj;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dj;->b:Lcom/google/android/gms/internal/ads/Yv;

    .line 4
    .line 5
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/dj;->c:Landroid/os/Bundle;

    .line 6
    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/Zi;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gr;->d:Lcom/google/android/gms/internal/ads/mr;

    .line 10
    .line 11
    invoke-direct {p1, p4, p3, p2}, Lcom/google/android/gms/internal/ads/Zi;-><init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/mr;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dj;->e:Lcom/google/android/gms/internal/ads/Zi;

    .line 15
    .line 16
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->o3:Lcom/google/android/gms/internal/ads/J7;

    .line 17
    .line 18
    sget-object p2, Ll3/q;->d:Ll3/q;

    .line 19
    .line 20
    iget-object p2, p2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gr;->e:Lcom/google/android/gms/internal/ads/uq;

    .line 35
    .line 36
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dj;->f:Lcom/google/android/gms/internal/ads/uq;

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gr;->a:Lcom/google/android/gms/internal/ads/fg;

    .line 39
    .line 40
    check-cast p1, Lcom/google/android/gms/internal/ads/Bg;

    .line 41
    .line 42
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Bg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 43
    .line 44
    new-instance v5, Lcom/google/android/gms/internal/ads/dj;

    .line 45
    .line 46
    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/dj;-><init>(Lcom/google/android/gms/internal/ads/dj;)V

    .line 47
    .line 48
    .line 49
    const-class p1, Lcom/google/android/gms/internal/ads/tk;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/gr;->c:Lcom/google/android/gms/internal/ads/tk;

    .line 52
    .line 53
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/Cw;->f1(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lcom/google/android/gms/internal/ads/Eg;

    .line 57
    .line 58
    new-instance v3, Lc4/y;

    .line 59
    .line 60
    const/4 p2, 0x4

    .line 61
    invoke-direct {v3, p2}, Lc4/y;-><init>(I)V

    .line 62
    .line 63
    .line 64
    new-instance v6, Lcom/google/android/gms/internal/ads/tr;

    .line 65
    .line 66
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    move-object v1, p1

    .line 72
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/Eg;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lc4/y;Lcom/google/android/gms/internal/ads/tk;Lcom/google/android/gms/internal/ads/dj;Lcom/google/android/gms/internal/ads/tr;Lcom/google/android/gms/internal/ads/zv;Lcom/google/android/gms/internal/ads/kv;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Eg;->zzb()Lcom/google/android/gms/internal/ads/Li;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Li;->b()Lcom/google/android/gms/internal/ads/Fw;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Li;->a(LD4/b;)Lcom/google/android/gms/internal/ads/Fw;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1
.end method
