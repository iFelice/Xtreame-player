.class public final synthetic Ll7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/updatecontents/XCUpdateContents;

.field public final synthetic I:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/updatecontents/XCUpdateContents;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ll7/i;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Ll7/i;->H:Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 7
    .line 8
    iput-object p2, p0, Ll7/i;->I:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Ll7/i;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Ll7/i;->I:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Ll7/i;->H:Lpe/hf/black20/updatecontents/XCUpdateContents;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->b0:I

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, v2, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 22
    .line 23
    new-instance v3, Lorg/json/JSONArray;

    .line 24
    .line 25
    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lc7/d;->c0(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    :cond_0
    new-instance v0, Ll7/h;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-direct {v0, v2, v1}, Ll7/h;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    sget v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->b0:I

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-lez v0, :cond_1

    .line 51
    .line 52
    :try_start_1
    iget-object v0, v2, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 53
    .line 54
    new-instance v3, Lorg/json/JSONArray;

    .line 55
    .line 56
    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Lc7/d;->a0(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    :catch_1
    :cond_1
    new-instance v0, Ll7/h;

    .line 63
    .line 64
    const/4 v1, 0x3

    .line 65
    invoke-direct {v0, v2, v1}, Ll7/h;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_1
    sget v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->b0:I

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-lez v0, :cond_2

    .line 82
    .line 83
    :try_start_2
    iget-object v0, v2, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 84
    .line 85
    new-instance v3, Lorg/json/JSONArray;

    .line 86
    .line 87
    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3}, Lc7/d;->E(Lorg/json/JSONArray;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 91
    .line 92
    .line 93
    :catch_2
    :cond_2
    new-instance v0, Ll7/h;

    .line 94
    .line 95
    const/4 v1, 0x6

    .line 96
    invoke-direct {v0, v2, v1}, Ll7/h;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_2
    sget v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->b0:I

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-lez v0, :cond_3

    .line 113
    .line 114
    :try_start_3
    iget-object v0, v2, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 115
    .line 116
    new-instance v3, Lorg/json/JSONArray;

    .line 117
    .line 118
    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3}, Lc7/d;->b0(Lorg/json/JSONArray;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 122
    .line 123
    .line 124
    :catch_3
    :cond_3
    new-instance v0, Ll7/h;

    .line 125
    .line 126
    const/4 v1, 0x4

    .line 127
    invoke-direct {v0, v2, v1}, Ll7/h;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_3
    sget v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->b0:I

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-lez v0, :cond_4

    .line 144
    .line 145
    :try_start_4
    iget-object v0, v2, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 146
    .line 147
    new-instance v3, Lorg/json/JSONArray;

    .line 148
    .line 149
    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v3}, Lc7/d;->O(Lorg/json/JSONArray;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 153
    .line 154
    .line 155
    :catch_4
    :cond_4
    new-instance v0, Ll7/h;

    .line 156
    .line 157
    const/4 v1, 0x1

    .line 158
    invoke-direct {v0, v2, v1}, Ll7/h;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_4
    sget v0, Lpe/hf/black20/updatecontents/XCUpdateContents;->b0:I

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-lez v0, :cond_5

    .line 175
    .line 176
    :try_start_5
    iget-object v0, v2, Lpe/hf/black20/updatecontents/XCUpdateContents;->I:Lc7/d;

    .line 177
    .line 178
    new-instance v3, Lorg/json/JSONArray;

    .line 179
    .line 180
    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v3}, Lc7/d;->k(Lorg/json/JSONArray;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 184
    .line 185
    .line 186
    :catch_5
    :cond_5
    new-instance v0, Ll7/h;

    .line 187
    .line 188
    const/4 v1, 0x5

    .line 189
    invoke-direct {v0, v2, v1}, Ll7/h;-><init>(Lpe/hf/black20/updatecontents/XCUpdateContents;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
