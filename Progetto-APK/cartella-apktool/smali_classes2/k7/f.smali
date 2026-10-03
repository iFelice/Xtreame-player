.class public final Lk7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lk7/b;

.field public final synthetic I:Ln2/t;


# direct methods
.method public synthetic constructor <init>(Ln2/t;Lk7/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lk7/f;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lk7/f;->I:Ln2/t;

    .line 7
    .line 8
    iput-object p2, p0, Lk7/f;->H:Lk7/b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lk7/f;->G:I

    .line 2
    .line 3
    const-string v1, " Mbps"

    .line 4
    .line 5
    iget-object v2, p0, Lk7/f;->H:Lk7/b;

    .line 6
    .line 7
    iget-object v3, p0, Lk7/f;->I:Ln2/t;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .line 13
    .line 14
    sget v4, Lpe/hf/black20/speedtest/SpeedTestActivity;->K:I

    .line 15
    .line 16
    int-to-float v5, v4

    .line 17
    sget v4, Lpe/hf/black20/speedtest/SpeedTestActivity;->J:I

    .line 18
    .line 19
    int-to-float v6, v4

    .line 20
    const/4 v9, 0x1

    .line 21
    const/high16 v10, 0x3f000000    # 0.5f

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    const/high16 v8, 0x3f000000    # 0.5f

    .line 25
    .line 26
    move-object v4, v0

    .line 27
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 28
    .line 29
    .line 30
    iput-object v0, v3, Ln2/t;->I:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 33
    .line 34
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v3, Ln2/t;->I:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Landroid/view/animation/RotateAnimation;

    .line 43
    .line 44
    const-wide/16 v4, 0x64

    .line 45
    .line 46
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v3, Ln2/t;->H:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v3, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, LW4/a;

    .line 61
    .line 62
    iget-object v3, v3, LW4/a;->I:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Ljava/text/DecimalFormat;

    .line 65
    .line 66
    invoke-virtual {v2}, Lk7/b;->a()D

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_0
    iget-object v0, v3, Ln2/t;->H:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Landroid/widget/TextView;

    .line 91
    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v3, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v3, LW4/a;

    .line 100
    .line 101
    iget-object v3, v3, LW4/a;->I:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v3, Ljava/text/DecimalFormat;

    .line 104
    .line 105
    iget-wide v5, v2, Lk7/b;->I:D

    .line 106
    .line 107
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    .line 108
    .line 109
    invoke-direct {v2, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 113
    .line 114
    const/4 v6, 0x2

    .line 115
    invoke-virtual {v2, v6, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    goto :goto_0

    .line 124
    :catch_0
    const-wide/16 v5, 0x0

    .line 125
    .line 126
    :goto_0
    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
