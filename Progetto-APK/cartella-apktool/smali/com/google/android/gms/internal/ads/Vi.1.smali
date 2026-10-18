.class public final synthetic Lcom/google/android/gms/internal/ads/Vi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vz;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lp3/a;Lcom/google/android/gms/internal/ads/Yv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Vi;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vi;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Vi;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Vi;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/Ov;Lf/b;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/Vi;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Vi;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Vi;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Vi;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Vi;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Vi;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Vi;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Vi;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lcom/google/android/gms/internal/ads/Ef;

    .line 13
    .line 14
    check-cast v2, Lcom/google/android/gms/internal/ads/Ov;

    .line 15
    .line 16
    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/Ov;->M:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ef;->k0()V

    .line 21
    .line 22
    .line 23
    :cond_0
    check-cast v1, Lcom/google/android/gms/internal/ads/Pg;

    .line 24
    .line 25
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ef;->N0()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ef;->onPause()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Pg;->G0()Lcom/google/android/gms/internal/ads/bn;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :pswitch_0
    check-cast v3, Lcom/google/android/gms/internal/ads/Ef;

    .line 37
    .line 38
    check-cast v2, Lcom/google/android/gms/internal/ads/Ov;

    .line 39
    .line 40
    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/Ov;->M:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ef;->k0()V

    .line 45
    .line 46
    .line 47
    :cond_1
    check-cast v1, Lcom/google/android/gms/internal/ads/Mg;

    .line 48
    .line 49
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ef;->N0()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ef;->onPause()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Mg;->G0()Lcom/google/android/gms/internal/ads/Vk;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :pswitch_1
    check-cast v3, Lcom/google/android/gms/internal/ads/Ef;

    .line 61
    .line 62
    check-cast v2, Lcom/google/android/gms/internal/ads/Ov;

    .line 63
    .line 64
    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/Ov;->M:Z

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ef;->k0()V

    .line 69
    .line 70
    .line 71
    :cond_2
    check-cast v1, Lcom/google/android/gms/internal/ads/Cg;

    .line 72
    .line 73
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ef;->N0()V

    .line 74
    .line 75
    .line 76
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ef;->onPause()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Cg;->G0()Lcom/google/android/gms/internal/ads/Ih;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/Ov;

    .line 85
    .line 86
    new-instance v0, Lo3/i;

    .line 87
    .line 88
    check-cast v3, Landroid/content/Context;

    .line 89
    .line 90
    invoke-direct {v0, v3}, Lo3/i;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Ov;->B:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v3, v0, Lo3/i;->c:Ljava/lang/String;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Ov;->C:Lorg/json/JSONObject;

    .line 98
    .line 99
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, v0, Lo3/i;->f:Ljava/lang/String;

    .line 104
    .line 105
    check-cast v2, Lp3/a;

    .line 106
    .line 107
    iget-object p1, v2, Lp3/a;->G:Ljava/lang/String;

    .line 108
    .line 109
    iput-object p1, v0, Lo3/i;->e:Ljava/lang/String;

    .line 110
    .line 111
    check-cast v1, Lcom/google/android/gms/internal/ads/Yv;

    .line 112
    .line 113
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/Yv;->f:Ljava/lang/String;

    .line 114
    .line 115
    iput-object p1, v0, Lo3/i;->d:Ljava/lang/String;

    .line 116
    .line 117
    return-object v0

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
