.class public final synthetic Lcom/google/android/gms/internal/ads/Xl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/N9;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/Yl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Yl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Xl;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Xl;->H:Lcom/google/android/gms/internal/ads/Yl;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Xl;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Xl;->H:Lcom/google/android/gms/internal/ads/Yl;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string p2, "Hiding native ads overlay."

    .line 15
    .line 16
    invoke-static {p2}, Lp3/h;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/16 p2, 0x8

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/Yl;->c:Lcom/google/android/gms/internal/ads/Dh;

    .line 29
    .line 30
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/Dh;->L:Z

    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string p2, "Showing native ads overlay."

    .line 39
    .line 40
    invoke-static {p2}, Lp3/h;->f(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/Yl;->c:Lcom/google/android/gms/internal/ads/Dh;

    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    iput-boolean p2, p1, Lcom/google/android/gms/internal/ads/Dh;->L:Z

    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_1
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 58
    .line 59
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ef;->zzN()Lcom/google/android/gms/internal/ads/Xf;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v1, Lcom/google/android/gms/internal/ads/x;

    .line 64
    .line 65
    const/16 v3, 0x1b

    .line 66
    .line 67
    invoke-direct {v1, v3, v2, p2}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/Xf;->M:Lcom/google/android/gms/internal/ads/cg;

    .line 71
    .line 72
    const-string p1, "overlayHtml"

    .line 73
    .line 74
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    move-object v2, p1

    .line 79
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    const-string p1, "baseUrl"

    .line 82
    .line 83
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    move-object v1, p1

    .line 88
    check-cast v1, Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_0

    .line 95
    .line 96
    const-string p1, "text/html"

    .line 97
    .line 98
    const-string p2, "UTF-8"

    .line 99
    .line 100
    invoke-interface {v0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/Ef;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const-string v3, "text/html"

    .line 105
    .line 106
    const-string v4, "UTF-8"

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Ef;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void

    .line 113
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 114
    .line 115
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/Yl;->d:Lcom/google/android/gms/internal/ads/Ll;

    .line 116
    .line 117
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ll;->zzg()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 122
    .line 123
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/Yl;->b:Lcom/google/android/gms/internal/ads/Tm;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Tm;->b(Ljava/util/Map;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
