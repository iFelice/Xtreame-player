.class public final Lcom/google/android/gms/internal/measurement/M4;
.super Lcom/google/android/gms/internal/measurement/h;
.source "SourceFile"


# instance fields
.field public final I:Z

.field public final J:Z

.field public final synthetic K:Lcom/google/android/gms/internal/measurement/V1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/V1;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/M4;->K:Lcom/google/android/gms/internal/measurement/V1;

    .line 2
    .line 3
    const-string p1, "log"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/M4;->I:Z

    .line 9
    .line 10
    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/M4;->J:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lm2/i;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;
    .locals 13

    .line 1
    const-string v0, "log"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/ads/Cw;->R1(Ljava/lang/String;ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/r;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/M4;->K:Lcom/google/android/gms/internal/measurement/V1;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/V1;->J:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v4, v0

    .line 21
    check-cast v4, LZ3/o;

    .line 22
    .line 23
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/google/android/gms/internal/measurement/n;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const/4 v5, 0x3

    .line 42
    iget-boolean v8, p0, Lcom/google/android/gms/internal/measurement/M4;->I:Z

    .line 43
    .line 44
    iget-boolean v9, p0, Lcom/google/android/gms/internal/measurement/M4;->J:Z

    .line 45
    .line 46
    invoke-virtual/range {v4 .. v9}, LZ3/o;->B(ILjava/lang/String;Ljava/util/List;ZZ)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzh()Ljava/lang/Double;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/Cw;->v0(D)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v3, 0x5

    .line 73
    const/4 v5, 0x2

    .line 74
    if-eq v0, v5, :cond_4

    .line 75
    .line 76
    const/4 v6, 0x3

    .line 77
    if-eq v0, v6, :cond_3

    .line 78
    .line 79
    if-eq v0, v3, :cond_2

    .line 80
    .line 81
    const/4 v7, 0x6

    .line 82
    if-eq v0, v7, :cond_1

    .line 83
    .line 84
    const/4 v8, 0x3

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/4 v8, 0x2

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const/4 v8, 0x5

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const/4 v8, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const/4 v6, 0x4

    .line 93
    const/4 v8, 0x4

    .line 94
    :goto_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-ne v0, v5, :cond_5

    .line 113
    .line 114
    iget-object p1, v4, Lcom/google/android/gms/internal/measurement/V1;->J:Ljava/lang/Object;

    .line 115
    .line 116
    move-object v7, p1

    .line 117
    check-cast v7, LZ3/o;

    .line 118
    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    iget-boolean v11, p0, Lcom/google/android/gms/internal/measurement/M4;->I:Z

    .line 124
    .line 125
    iget-boolean v12, p0, Lcom/google/android/gms/internal/measurement/M4;->J:Z

    .line 126
    .line 127
    invoke-virtual/range {v7 .. v12}, LZ3/o;->B(ILjava/lang/String;Ljava/util/List;ZZ)V

    .line 128
    .line 129
    .line 130
    return-object v2

    .line 131
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-ge v5, v0, :cond_6

    .line 145
    .line 146
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    add-int/lit8 v5, v5, 0x1

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_6
    iget-object p1, v4, Lcom/google/android/gms/internal/measurement/V1;->J:Ljava/lang/Object;

    .line 167
    .line 168
    move-object v7, p1

    .line 169
    check-cast v7, LZ3/o;

    .line 170
    .line 171
    iget-boolean v11, p0, Lcom/google/android/gms/internal/measurement/M4;->I:Z

    .line 172
    .line 173
    iget-boolean v12, p0, Lcom/google/android/gms/internal/measurement/M4;->J:Z

    .line 174
    .line 175
    invoke-virtual/range {v7 .. v12}, LZ3/o;->B(ILjava/lang/String;Ljava/util/List;ZZ)V

    .line 176
    .line 177
    .line 178
    return-object v2
.end method
