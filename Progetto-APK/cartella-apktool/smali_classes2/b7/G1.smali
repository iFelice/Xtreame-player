.class public final Lb7/G1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Landroid/widget/TextView;

.field public final synthetic I:Lpe/hf/black20/SettingsMenuActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/SettingsMenuActivity;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lb7/G1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/G1;->I:Lpe/hf/black20/SettingsMenuActivity;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/G1;->H:Landroid/widget/TextView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb7/G1;->G:I

    .line 4
    .line 5
    const-string v2, "no"

    .line 6
    .line 7
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 10
    .line 11
    const/4 v13, 0x0

    .line 12
    const-string v14, "timeShiftAuto"

    .line 13
    .line 14
    iget-object v15, v0, Lb7/G1;->H:Landroid/widget/TextView;

    .line 15
    .line 16
    const-string v3, " Min"

    .line 17
    .line 18
    const-string v4, " Hr "

    .line 19
    .line 20
    iget-object v5, v0, Lb7/G1;->I:Lpe/hf/black20/SettingsMenuActivity;

    .line 21
    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    iput-boolean v13, v5, Lpe/hf/black20/SettingsMenuActivity;->O:Z

    .line 26
    .line 27
    iget-wide v7, v5, Lpe/hf/black20/SettingsMenuActivity;->M:D

    .line 28
    .line 29
    add-double/2addr v7, v11

    .line 30
    iput-wide v7, v5, Lpe/hf/black20/SettingsMenuActivity;->M:D

    .line 31
    .line 32
    rem-double v9, v7, v9

    .line 33
    .line 34
    const-wide/16 v11, 0x0

    .line 35
    .line 36
    cmpl-double v1, v9, v11

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    cmpl-double v1, v7, v11

    .line 41
    .line 42
    if-ltz v1, :cond_0

    .line 43
    .line 44
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    .line 45
    .line 46
    iput-wide v6, v5, Lpe/hf/black20/SettingsMenuActivity;->N:D

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-wide/high16 v6, -0x3fc2000000000000L    # -30.0

    .line 50
    .line 51
    iput-wide v6, v5, Lpe/hf/black20/SettingsMenuActivity;->N:D

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iput-wide v11, v5, Lpe/hf/black20/SettingsMenuActivity;->N:D

    .line 55
    .line 56
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-wide v6, v5, Lpe/hf/black20/SettingsMenuActivity;->M:D

    .line 62
    .line 63
    double-to-int v6, v6

    .line 64
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-wide v6, v5, Lpe/hf/black20/SettingsMenuActivity;->N:D

    .line 71
    .line 72
    double-to-int v4, v6

    .line 73
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v5, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 91
    .line 92
    invoke-static {v1, v14, v2}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_0
    iput-boolean v13, v5, Lpe/hf/black20/SettingsMenuActivity;->O:Z

    .line 97
    .line 98
    iget-wide v6, v5, Lpe/hf/black20/SettingsMenuActivity;->M:D

    .line 99
    .line 100
    sub-double/2addr v6, v11

    .line 101
    iput-wide v6, v5, Lpe/hf/black20/SettingsMenuActivity;->M:D

    .line 102
    .line 103
    rem-double v8, v6, v9

    .line 104
    .line 105
    const-wide/16 v10, 0x0

    .line 106
    .line 107
    cmpl-double v1, v8, v10

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    cmpl-double v1, v6, v10

    .line 112
    .line 113
    if-ltz v1, :cond_2

    .line 114
    .line 115
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    .line 116
    .line 117
    iput-wide v6, v5, Lpe/hf/black20/SettingsMenuActivity;->N:D

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    const-wide/high16 v6, -0x3fc2000000000000L    # -30.0

    .line 121
    .line 122
    iput-wide v6, v5, Lpe/hf/black20/SettingsMenuActivity;->N:D

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    iput-wide v10, v5, Lpe/hf/black20/SettingsMenuActivity;->N:D

    .line 126
    .line 127
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-wide v6, v5, Lpe/hf/black20/SettingsMenuActivity;->M:D

    .line 133
    .line 134
    double-to-int v6, v6

    .line 135
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-wide v6, v5, Lpe/hf/black20/SettingsMenuActivity;->N:D

    .line 142
    .line 143
    double-to-int v4, v6

    .line 144
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v5, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 162
    .line 163
    invoke-static {v1, v14, v2}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_1
    const/4 v1, 0x1

    .line 168
    iput-boolean v1, v5, Lpe/hf/black20/SettingsMenuActivity;->O:Z

    .line 169
    .line 170
    iget-object v1, v5, Lpe/hf/black20/SettingsMenuActivity;->J:Lpe/hf/black20/SettingsMenuActivity;

    .line 171
    .line 172
    const-string v2, "yes"

    .line 173
    .line 174
    invoke-static {v1, v2}, Lpe/hf/black20/util/Methods;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v6, v5, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 183
    .line 184
    const-string v7, "timeShiftHR"

    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object v4, v5, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 198
    .line 199
    const-string v6, "timeShiftMin"

    .line 200
    .line 201
    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v5, Lpe/hf/black20/SettingsMenuActivity;->G:Landroid/content/SharedPreferences;

    .line 219
    .line 220
    invoke-static {v1, v14, v2}, La/r;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
