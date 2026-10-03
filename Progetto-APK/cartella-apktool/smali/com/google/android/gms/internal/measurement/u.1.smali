.class public final Lcom/google/android/gms/internal/measurement/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LP5/o;LO5/t;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/measurement/u;->G:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u;->I:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/h;Lm2/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/u;->G:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u;->H:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u;->I:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/measurement/u;->G:I

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/u;->H:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/u;->I:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, LO5/t;

    .line 13
    .line 14
    check-cast p2, LO5/t;

    .line 15
    .line 16
    check-cast v4, LP5/o;

    .line 17
    .line 18
    check-cast v3, LO5/t;

    .line 19
    .line 20
    invoke-virtual {v4, p1, v3}, LP5/o;->a(LO5/t;LO5/t;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v4, p2, v3}, LP5/o;->a(LO5/t;LO5/t;)F

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/n;

    .line 34
    .line 35
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/r;

    .line 36
    .line 37
    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    instance-of p1, p2, Lcom/google/android/gms/internal/measurement/r;

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    instance-of v2, p2, Lcom/google/android/gms/internal/measurement/r;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    const/4 p1, -0x1

    .line 52
    const/4 v0, -0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    check-cast v3, Lcom/google/android/gms/internal/measurement/h;

    .line 55
    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    :goto_0
    move v0, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    check-cast v4, Lm2/i;

    .line 73
    .line 74
    const/4 v2, 0x2

    .line 75
    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/n;

    .line 76
    .line 77
    aput-object p1, v2, v0

    .line 78
    .line 79
    aput-object p2, v2, v1

    .line 80
    .line 81
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/h;->a(Lm2/i;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 94
    .line 95
    .line 96
    move-result-wide p1

    .line 97
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Cw;->r(D)D

    .line 98
    .line 99
    .line 100
    move-result-wide p1

    .line 101
    double-to-int p1, p1

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    :goto_1
    return v0

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
