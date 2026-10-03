.class public abstract Lcom/google/android/gms/internal/ads/Wy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Landroid/content/ClipData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x4000000

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    sput v0, Lcom/google/android/gms/internal/ads/Wy;->a:I

    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/ads/Wy;->b:Landroid/content/ClipData;

    .line 25
    .line 26
    return-void
.end method

.method public static a(ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 9

    .line 1
    and-int/lit8 v0, p0, 0x58

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v3, "Cannot set any dangerous parts of intent to be mutable."

    .line 11
    .line 12
    invoke-static {v3, v0}, Lf/b;->B0(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    and-int/lit8 v0, p0, 0x1

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    :goto_1
    const-string v4, "Cannot use Intent.FILL_IN_ACTION unless the action is marked as mutable."

    .line 30
    .line 31
    invoke-static {v4, v0}, Lf/b;->B0(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    and-int/lit8 v0, p0, 0x2

    .line 35
    .line 36
    const/4 v4, 0x5

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    :cond_3
    const/4 v0, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const/4 v0, 0x0

    .line 48
    :goto_2
    const-string v5, "Cannot use Intent.FILL_IN_DATA unless the data is marked as mutable."

    .line 49
    .line 50
    invoke-static {v5, v0}, Lf/b;->B0(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    and-int/lit8 v0, p0, 0x4

    .line 54
    .line 55
    const/16 v5, 0x9

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    :cond_5
    const/4 v0, 0x1

    .line 66
    goto :goto_3

    .line 67
    :cond_6
    const/4 v0, 0x0

    .line 68
    :goto_3
    const-string v6, "Cannot use Intent.FILL_IN_CATEGORIES unless the category is marked as mutable."

    .line 69
    .line 70
    invoke-static {v6, v0}, Lf/b;->B0(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    and-int/lit16 v0, p0, 0x80

    .line 74
    .line 75
    const/16 v6, 0x11

    .line 76
    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_8

    .line 84
    .line 85
    :cond_7
    const/4 v0, 0x1

    .line 86
    goto :goto_4

    .line 87
    :cond_8
    const/4 v0, 0x0

    .line 88
    :goto_4
    const-string v7, "Cannot use Intent.FILL_IN_CLIP_DATA unless the clip data is marked as mutable."

    .line 89
    .line 90
    invoke-static {v7, v0}, Lf/b;->B0(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    const/4 v0, 0x1

    .line 100
    goto :goto_5

    .line 101
    :cond_9
    const/4 v0, 0x0

    .line 102
    :goto_5
    const-string v7, "Must set component on Intent."

    .line 103
    .line 104
    invoke-static {v7, v0}, Lf/b;->B0(Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/16 v7, 0x17

    .line 112
    .line 113
    const/high16 v8, 0x4000000

    .line 114
    .line 115
    if-eqz v0, :cond_a

    .line 116
    .line 117
    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    xor-int/2addr v0, v1

    .line 122
    const-string v1, "Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set."

    .line 123
    .line 124
    invoke-static {v1, v0}, Lf/b;->B0(Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    .line 130
    if-lt v0, v7, :cond_c

    .line 131
    .line 132
    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_b

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_b
    const/4 v1, 0x0

    .line 140
    :cond_c
    :goto_6
    const-string v0, "Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable."

    .line 141
    .line 142
    invoke-static {v0, v1}, Lf/b;->B0(Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    :goto_7
    new-instance v0, Landroid/content/Intent;

    .line 146
    .line 147
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 148
    .line 149
    .line 150
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 151
    .line 152
    if-lt p1, v7, :cond_d

    .line 153
    .line 154
    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-nez p0, :cond_12

    .line 159
    .line 160
    :cond_d
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    if-nez p0, :cond_e

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    :cond_e
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    const-string p1, ""

    .line 182
    .line 183
    if-nez p0, :cond_f

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    if-nez p0, :cond_f

    .line 190
    .line 191
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    :cond_f
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    if-nez p0, :cond_10

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    if-nez p0, :cond_10

    .line 205
    .line 206
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    :cond_10
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    if-nez p0, :cond_11

    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    if-nez p0, :cond_11

    .line 220
    .line 221
    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 222
    .line 223
    const-string p1, "*/*"

    .line 224
    .line 225
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    .line 227
    .line 228
    :cond_11
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/ads/Wy;->b(II)Z

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    if-nez p0, :cond_12

    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    if-nez p0, :cond_12

    .line 239
    .line 240
    sget-object p0, Lcom/google/android/gms/internal/ads/Wy;->b:Landroid/content/ClipData;

    .line 241
    .line 242
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 243
    .line 244
    .line 245
    :cond_12
    return-object v0
.end method

.method public static b(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
