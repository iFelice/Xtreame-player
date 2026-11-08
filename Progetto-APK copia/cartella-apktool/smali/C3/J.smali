.class public final LC3/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Collection;


# direct methods
.method public static a(LC3/J;)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    iget-object v3, p0, LC3/J;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, LC3/J;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v4, "/"

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 17
    .line 18
    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v5, "[A-F0-9]+"

    .line 23
    .line 24
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, p0, LC3/J;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v1, "Invalid application ID: "

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_1
    :goto_0
    iget-object v3, p0, LC3/J;->c:Ljava/util/Collection;

    .line 56
    .line 57
    if-eqz v3, :cond_c

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_b

    .line 64
    .line 65
    iget-object v3, p0, LC3/J;->b:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, LC3/J;->c:Ljava/util/Collection;

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const/4 v5, 0x1

    .line 82
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_c

    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v6}, LH3/a;->c(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    if-nez v5, :cond_3

    .line 98
    .line 99
    const-string v5, ","

    .line 100
    .line 101
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :cond_3
    sget-object v5, LH3/a;->a:Ljava/util/regex/Pattern;

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_4

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .line 125
    .line 126
    const/4 v7, 0x0

    .line 127
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-ge v7, v8, :cond_a

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    const/16 v9, 0x41

    .line 138
    .line 139
    if-lt v8, v9, :cond_5

    .line 140
    .line 141
    const/16 v9, 0x5a

    .line 142
    .line 143
    if-le v8, v9, :cond_9

    .line 144
    .line 145
    :cond_5
    const/16 v9, 0x61

    .line 146
    .line 147
    if-lt v8, v9, :cond_6

    .line 148
    .line 149
    const/16 v9, 0x7a

    .line 150
    .line 151
    if-le v8, v9, :cond_9

    .line 152
    .line 153
    :cond_6
    const/16 v9, 0x30

    .line 154
    .line 155
    if-lt v8, v9, :cond_7

    .line 156
    .line 157
    const/16 v9, 0x39

    .line 158
    .line 159
    if-le v8, v9, :cond_9

    .line 160
    .line 161
    :cond_7
    const/16 v9, 0x5f

    .line 162
    .line 163
    if-eq v8, v9, :cond_9

    .line 164
    .line 165
    const/16 v9, 0x2d

    .line 166
    .line 167
    if-ne v8, v9, :cond_8

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_8
    const/16 v9, 0x2e

    .line 171
    .line 172
    if-eq v8, v9, :cond_9

    .line 173
    .line 174
    const/16 v9, 0x3a

    .line 175
    .line 176
    if-eq v8, v9, :cond_9

    .line 177
    .line 178
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    new-array v9, v1, [Ljava/lang/Object;

    .line 183
    .line 184
    aput-object v8, v9, v0

    .line 185
    .line 186
    const-string v8, "%%%04x"

    .line 187
    .line 188
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_9
    :goto_3
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    :goto_4
    add-int/2addr v7, v1

    .line 200
    goto :goto_2

    .line 201
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const/4 v5, 0x0

    .line 209
    goto :goto_1

    .line 210
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 211
    .line 212
    const-string v0, "Must specify at least one namespace"

    .line 213
    .line 214
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_c
    iget-object v0, p0, LC3/J;->b:Ljava/lang/String;

    .line 219
    .line 220
    if-nez v0, :cond_d

    .line 221
    .line 222
    iget-object v0, p0, LC3/J;->c:Ljava/util/Collection;

    .line 223
    .line 224
    if-nez v0, :cond_d

    .line 225
    .line 226
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    :cond_d
    iget-object p0, p0, LC3/J;->c:Ljava/util/Collection;

    .line 230
    .line 231
    if-nez p0, :cond_e

    .line 232
    .line 233
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    :cond_e
    const-string p0, "//ALLOW_IPV6"

    .line 237
    .line 238
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0
.end method
