.class public final LJ1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LL1/i;


# direct methods
.method public constructor <init>(LL1/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ1/b;->a:LL1/i;

    .line 5
    .line 6
    return-void
.end method

.method public static final a(Landroid/content/Context;)LJ1/b;
    .locals 11

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    sget-object v1, LG1/b;->a:LG1/b;

    .line 9
    .line 10
    const/16 v2, 0x21

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-lt v0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, LG1/b;->a()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v4, 0x0

    .line 21
    :goto_0
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x2

    .line 23
    const/16 v7, 0xb

    .line 24
    .line 25
    if-lt v4, v7, :cond_1

    .line 26
    .line 27
    new-instance v0, LL1/g;

    .line 28
    .line 29
    invoke-direct {v0, p0, v6}, LL1/g;-><init>(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_1
    if-lt v0, v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1}, LG1/b;->a()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v4, 0x0

    .line 42
    :goto_1
    const/4 v8, 0x5

    .line 43
    const/4 v9, 0x4

    .line 44
    if-lt v4, v8, :cond_3

    .line 45
    .line 46
    new-instance v0, LL1/g;

    .line 47
    .line 48
    invoke-direct {v0, p0, v9}, LL1/g;-><init>(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_3
    if-lt v0, v2, :cond_4

    .line 54
    .line 55
    invoke-virtual {v1}, LG1/b;->a()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ne v1, v9, :cond_4

    .line 60
    .line 61
    new-instance v0, LL1/g;

    .line 62
    .line 63
    const/4 v1, 0x3

    .line 64
    invoke-direct {v0, p0, v1}, LL1/g;-><init>(Landroid/content/Context;I)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_4
    sget-object v1, LG1/a;->a:LG1/a;

    .line 70
    .line 71
    const/16 v2, 0x20

    .line 72
    .line 73
    const/16 v4, 0x1f

    .line 74
    .line 75
    if-eq v0, v4, :cond_6

    .line 76
    .line 77
    if-ne v0, v2, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    const/4 v8, 0x0

    .line 81
    goto :goto_3

    .line 82
    :cond_6
    :goto_2
    invoke-virtual {v1}, LG1/a;->a()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    :goto_3
    const-string v9, "Unable to find adservices code, check manifest for uses-library tag, versionS="

    .line 87
    .line 88
    const-string v10, "TopicsManager"

    .line 89
    .line 90
    if-lt v8, v7, :cond_9

    .line 91
    .line 92
    new-instance v0, LK1/b;

    .line 93
    .line 94
    const/4 v6, 0x1

    .line 95
    invoke-direct {v0, p0, v6}, LK1/b;-><init>(Landroid/content/Context;I)V

    .line 96
    .line 97
    .line 98
    :try_start_0
    invoke-virtual {v0, p0}, LK1/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_4

    .line 103
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .line 110
    if-eq v0, v4, :cond_7

    .line 111
    .line 112
    if-ne v0, v2, :cond_8

    .line 113
    .line 114
    :cond_7
    invoke-virtual {v1}, LG1/a;->a()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    :cond_8
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-object p0, v5

    .line 129
    :goto_4
    move-object v0, p0

    .line 130
    check-cast v0, LL1/i;

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_9
    if-eq v0, v4, :cond_a

    .line 134
    .line 135
    if-ne v0, v2, :cond_d

    .line 136
    .line 137
    :cond_a
    invoke-virtual {v1}, LG1/a;->a()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    const/16 v7, 0x9

    .line 142
    .line 143
    if-lt v0, v7, :cond_d

    .line 144
    .line 145
    new-instance v0, LK1/b;

    .line 146
    .line 147
    invoke-direct {v0, p0, v6}, LK1/b;-><init>(Landroid/content/Context;I)V

    .line 148
    .line 149
    .line 150
    :try_start_1
    invoke-virtual {v0, p0}, LK1/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    goto :goto_5

    .line 155
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 161
    .line 162
    if-eq v0, v4, :cond_b

    .line 163
    .line 164
    if-ne v0, v2, :cond_c

    .line 165
    .line 166
    :cond_b
    invoke-virtual {v1}, LG1/a;->a()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    :cond_c
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-object p0, v5

    .line 181
    :goto_5
    move-object v0, p0

    .line 182
    check-cast v0, LL1/i;

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_d
    move-object v0, v5

    .line 186
    :goto_6
    if-eqz v0, :cond_e

    .line 187
    .line 188
    new-instance v5, LJ1/b;

    .line 189
    .line 190
    invoke-direct {v5, v0}, LJ1/b;-><init>(LL1/i;)V

    .line 191
    .line 192
    .line 193
    :cond_e
    return-object v5
.end method


# virtual methods
.method public b(LL1/b;)LD4/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LL1/b;",
            ")",
            "LD4/b;"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, LJ6/y;->a:LO6/e;

    .line 7
    .line 8
    sget-object v0, LN6/p;->a:LJ6/S;

    .line 9
    .line 10
    invoke-static {v0}, Ly4/k;->a(LJ6/m;)LN6/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, LJ1/a;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p0, p1, v2}, LJ1/a;-><init>(LJ1/b;LL1/b;Lx6/e;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lz4/q0;->d(LN6/a;LC6/p;)LJ6/v;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->a(LJ6/v;)Lt/l;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
