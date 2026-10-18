.class public final Lb7/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lb7/D;


# direct methods
.method public synthetic constructor <init>(Lb7/D;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/E;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/E;->b:Lb7/D;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5

    .line 1
    iget p1, p0, Lb7/E;->a:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    iget-object p4, p0, Lb7/E;->b:Lb7/D;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p1, p4, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 10
    .line 11
    iget-object p1, p1, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 12
    .line 13
    new-instance p5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "ORT_PROFILE_ID"

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    const-string v2, "-"

    .line 23
    .line 24
    invoke-static {v0, v1, p5, v2}, Lcom/google/protobuf/U2;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p4, p4, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 28
    .line 29
    iget-object v2, p4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/HashMap;

    .line 36
    .line 37
    const-string v3, "stream_id"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p5

    .line 52
    invoke-virtual {p1, p5}, Lc7/d;->A0(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-lez p1, :cond_0

    .line 57
    .line 58
    iget-object p1, p4, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 59
    .line 60
    iget-object p5, p4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    check-cast p3, Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p4, p1, p3}, Lpe/hf/black20/ChannelListActivity;->c(Lpe/hf/black20/ChannelListActivity;Lc7/d;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p4, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 79
    .line 80
    iget-object p5, p4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p5

    .line 86
    check-cast p5, Ljava/util/HashMap;

    .line 87
    .line 88
    const-string v2, "series_id"

    .line 89
    .line 90
    invoke-virtual {p5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p5

    .line 94
    check-cast p5, Ljava/lang/String;

    .line 95
    .line 96
    iget-object v3, p4, Lpe/hf/black20/ChannelListActivity;->R:Lh7/i;

    .line 97
    .line 98
    iget-object v3, v3, Lh7/i;->a:Ljava/lang/String;

    .line 99
    .line 100
    const-string v4, "_series"

    .line 101
    .line 102
    invoke-virtual {p1, p5, v3, v4}, Lc7/d;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string p5, "yes"

    .line 107
    .line 108
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_1

    .line 113
    .line 114
    iget-object p1, p4, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 115
    .line 116
    iget-object p5, p4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    check-cast p3, Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    check-cast p3, Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 131
    .line 132
    .line 133
    move-result-object p5

    .line 134
    invoke-virtual {p5, v0, v1}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p5

    .line 138
    invoke-virtual {p1, p3, p5, v4}, Lc7/d;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p4, Lpe/hf/black20/ChannelListActivity;->O:Lc7/d;

    .line 143
    .line 144
    iget-object p5, p4, Lpe/hf/black20/ChannelListActivity;->M:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    check-cast p3, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    check-cast p3, Ljava/lang/String;

    .line 157
    .line 158
    new-instance p5, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v2, v0, v1}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p5

    .line 181
    invoke-virtual {p1, p3, p5}, Lc7/d;->f0(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_0
    new-instance p1, Lb7/D;

    .line 185
    .line 186
    invoke-direct {p1, p4}, Lb7/D;-><init>(Lpe/hf/black20/ChannelListActivity;)V

    .line 187
    .line 188
    .line 189
    const/4 p3, 0x0

    .line 190
    new-array p3, p3, [Ljava/lang/Void;

    .line 191
    .line 192
    invoke-virtual {p1, p3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    .line 194
    .line 195
    return p2

    .line 196
    :pswitch_0
    iget-object p1, p4, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 197
    .line 198
    iget-object p1, p1, Lpe/hf/black20/ChannelListActivity;->K:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Ljava/util/HashMap;

    .line 205
    .line 206
    const-string p3, "category_id"

    .line 207
    .line 208
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Ljava/lang/String;

    .line 213
    .line 214
    const-string p3, "99999"

    .line 215
    .line 216
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_2

    .line 221
    .line 222
    iget-object p1, p4, Lb7/D;->b:Lpe/hf/black20/ChannelListActivity;

    .line 223
    .line 224
    invoke-static {p1}, Lpe/hf/black20/ChannelListActivity;->a(Lpe/hf/black20/ChannelListActivity;)V

    .line 225
    .line 226
    .line 227
    :cond_2
    return p2

    .line 228
    nop

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
