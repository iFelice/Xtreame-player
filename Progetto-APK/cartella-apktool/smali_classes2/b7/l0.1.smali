.class public final Lb7/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/l0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/l0;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 9

    .line 1
    iget p1, p0, Lb7/l0;->G:I

    .line 2
    .line 3
    const-string v0, "XCIPTV_TAG"

    .line 4
    .line 5
    const-string v1, "-"

    .line 6
    .line 7
    const-string v2, "ORT_PROFILE_ID"

    .line 8
    .line 9
    const-string v3, ""

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    iget-object v6, p0, Lb7/l0;->H:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v6, Lb7/S0;

    .line 19
    .line 20
    invoke-static {v6}, Lb7/S0;->S(Lb7/S0;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, v6, Lb7/S0;->v1:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return v5

    .line 29
    :pswitch_0
    check-cast v6, Lb7/M0;

    .line 30
    .line 31
    invoke-static {v6}, Lb7/M0;->S(Lb7/M0;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v6, Lb7/M0;->a1:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    return v5

    .line 40
    :pswitch_1
    check-cast v6, Lb7/I0;

    .line 41
    .line 42
    invoke-static {v6}, Lb7/I0;->S(Lb7/I0;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v6, Lb7/I0;->w1:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    return v5

    .line 51
    :pswitch_2
    new-instance p1, Lc7/d;

    .line 52
    .line 53
    check-cast v6, Lb7/i0;

    .line 54
    .line 55
    iget-object v4, v6, Lb7/i0;->L:Lb7/t0;

    .line 56
    .line 57
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-direct {p1, v4}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v3, v4, v1}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v6, Lb7/i0;->K:Ljava/util/HashMap;

    .line 73
    .line 74
    const-string v2, "stream_id"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v1}, Lc7/d;->A0(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-lez v1, :cond_0

    .line 94
    .line 95
    iget-object v1, v6, Lb7/i0;->K:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Ljava/lang/String;

    .line 102
    .line 103
    iget-object v2, v6, Lb7/i0;->L:Lb7/t0;

    .line 104
    .line 105
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string v3, "VOD"

    .line 110
    .line 111
    invoke-static {p1, v1, v2, v3}, Lpe/hf/black20/ORPlayerMainActivity;->v(Lc7/d;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_0
    const-string p1, "----------Long Press VOD"

    .line 115
    .line 116
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    return v5

    .line 120
    :pswitch_3
    new-instance p1, Lc7/d;

    .line 121
    .line 122
    check-cast v6, Lb7/m0;

    .line 123
    .line 124
    iget-object v4, v6, Lb7/m0;->L:Lb7/t0;

    .line 125
    .line 126
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-direct {p1, v4}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v3, v4, v1}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v7, v6, Lb7/m0;->K:Ljava/util/HashMap;

    .line 142
    .line 143
    const-string v8, "name"

    .line 144
    .line 145
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    check-cast v7, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {p1, v4}, Lc7/d;->B0(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_1

    .line 163
    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v3, v4, v1}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v6, Lb7/m0;->K:Ljava/util/HashMap;

    .line 173
    .line 174
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    iget-object v2, v6, Lb7/m0;->L:Lb7/t0;

    .line 188
    .line 189
    invoke-virtual {v2}, LY/s;->l()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const-string v3, "SERIES"

    .line 194
    .line 195
    invoke-static {p1, v1, v2, v3}, Lpe/hf/black20/ORPlayerMainActivity;->v(Lc7/d;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v1, "----------Long Press Series"

    .line 201
    .line 202
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v6, Lb7/m0;->K:Ljava/util/HashMap;

    .line 206
    .line 207
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    return v5

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
