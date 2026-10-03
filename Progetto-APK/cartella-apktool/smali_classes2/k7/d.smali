.class public final Lk7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lk7/a;

.field public final synthetic I:Ln2/t;


# direct methods
.method public synthetic constructor <init>(Ln2/t;Lk7/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lk7/d;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lk7/d;->I:Ln2/t;

    .line 7
    .line 8
    iput-object p2, p0, Lk7/d;->H:Lk7/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lk7/d;->G:I

    .line 2
    .line 3
    const-string v1, " Mbps"

    .line 4
    .line 5
    iget-object v2, p0, Lk7/d;->H:Lk7/a;

    .line 6
    .line 7
    iget-object v3, p0, Lk7/d;->I:Ln2/t;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v3, Ln2/t;->K:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v3, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, LW4/a;

    .line 24
    .line 25
    iget-object v3, v3, LW4/a;->I:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Ljava/text/DecimalFormat;

    .line 28
    .line 29
    iget-wide v5, v2, Lk7/a;->K:D

    .line 30
    .line 31
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    .line 32
    .line 33
    invoke-direct {v2, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    invoke-virtual {v2, v6, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    const-wide/16 v5, 0x0

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .line 69
    .line 70
    sget v4, Lpe/hf/black20/speedtest/SpeedTestActivity;->K:I

    .line 71
    .line 72
    int-to-float v5, v4

    .line 73
    sget v4, Lpe/hf/black20/speedtest/SpeedTestActivity;->J:I

    .line 74
    .line 75
    int-to-float v6, v4

    .line 76
    const/4 v9, 0x1

    .line 77
    const/high16 v10, 0x3f000000    # 0.5f

    .line 78
    .line 79
    const/4 v7, 0x1

    .line 80
    const/high16 v8, 0x3f000000    # 0.5f

    .line 81
    .line 82
    move-object v4, v0

    .line 83
    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 84
    .line 85
    .line 86
    iput-object v0, v3, Ln2/t;->I:Ljava/lang/Object;

    .line 87
    .line 88
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 89
    .line 90
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, v3, Ln2/t;->I:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Landroid/view/animation/RotateAnimation;

    .line 99
    .line 100
    const-wide/16 v4, 0x64

    .line 101
    .line 102
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v3, Ln2/t;->K:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Landroid/widget/TextView;

    .line 108
    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v3, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v3, LW4/a;

    .line 117
    .line 118
    iget-object v3, v3, LW4/a;->I:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v3, Ljava/text/DecimalFormat;

    .line 121
    .line 122
    iget-wide v5, v2, Lk7/a;->M:D

    .line 123
    .line 124
    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
