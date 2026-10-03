.class public final Lk7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ln2/t;


# direct methods
.method public synthetic constructor <init>(Ln2/t;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lk7/g;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lk7/g;->H:Ln2/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lk7/g;->G:I

    .line 2
    .line 3
    const/high16 v1, 0x41800000    # 16.0f

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lk7/g;->H:Ln2/t;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, LW4/a;

    .line 14
    .line 15
    iget-object v0, v0, LW4/a;->H:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroid/widget/Button;

    .line 18
    .line 19
    const/high16 v1, 0x41400000    # 12.0f

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, LW4/a;

    .line 27
    .line 28
    iget-object v1, v0, LW4/a;->H:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Landroid/widget/Button;

    .line 31
    .line 32
    iget-object v0, v0, LW4/a;->J:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 35
    .line 36
    iget-object v0, v0, Lpe/hf/black20/speedtest/SpeedTestActivity;->G:Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 37
    .line 38
    const v2, 0x7f130206

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    iget-object v0, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, LW4/a;

    .line 52
    .line 53
    iget-object v0, v0, LW4/a;->J:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v4, "No Connection..."

    .line 62
    .line 63
    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    .line 69
    .line 70
    iget-object v0, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, LW4/a;

    .line 73
    .line 74
    iget-object v3, v0, LW4/a;->H:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Landroid/widget/Button;

    .line 77
    .line 78
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v0, LW4/a;->H:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Landroid/widget/Button;

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, LW4/a;->H:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Landroid/widget/Button;

    .line 91
    .line 92
    iget-object v0, v0, LW4/a;->J:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 95
    .line 96
    iget-object v0, v0, Lpe/hf/black20/speedtest/SpeedTestActivity;->G:Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 97
    .line 98
    const v2, 0x7f13020e

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_1
    iget-object v0, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, LW4/a;

    .line 112
    .line 113
    iget-object v1, v0, LW4/a;->H:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v1, Landroid/widget/Button;

    .line 116
    .line 117
    iget-object v0, v0, LW4/a;->J:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 120
    .line 121
    iget-object v0, v0, Lpe/hf/black20/speedtest/SpeedTestActivity;->G:Lpe/hf/black20/speedtest/SpeedTestActivity;

    .line 122
    .line 123
    const v2, 0x7f1301b1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_2
    iget-object v0, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, LW4/a;

    .line 137
    .line 138
    iget-object v0, v0, LW4/a;->H:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Landroid/widget/Button;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v0, v3, Ln2/t;->L:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v0, LW4/a;

    .line 148
    .line 149
    iget-object v2, v0, LW4/a;->H:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v2, Landroid/widget/Button;

    .line 152
    .line 153
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 154
    .line 155
    .line 156
    iget-object v0, v0, LW4/a;->H:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Landroid/widget/Button;

    .line 159
    .line 160
    const-string v1, "Restart Test"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
