.class public final LO0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/U;


# instance fields
.field public final G:LO0/U;

.field public H:Z

.field public final synthetic I:LO0/d;


# direct methods
.method public constructor <init>(LO0/d;LO0/U;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO0/c;->I:LO0/d;

    .line 5
    .line 6
    iput-object p2, p0, LO0/c;->G:LO0/U;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, LO0/c;->G:LO0/U;

    .line 2
    .line 3
    invoke-interface {v0}, LO0/U;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, LO0/c;->I:LO0/d;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/d;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LO0/c;->G:LO0/U;

    .line 10
    .line 11
    invoke-interface {v0}, LO0/U;->f()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public final j(J)I
    .locals 1

    .line 1
    iget-object v0, p0, LO0/c;->I:LO0/d;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/d;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, -0x3

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v0, p0, LO0/c;->G:LO0/U;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, LO0/U;->j(J)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final r(LB0/Z;Lw0/g;I)I
    .locals 11

    .line 1
    iget-object v0, p0, LO0/c;->I:LO0/d;

    .line 2
    .line 3
    invoke-virtual {v0}, LO0/d;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x3

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-boolean v1, p0, LO0/c;->H:Z

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    const/4 v4, -0x4

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2, v3}, Lw0/a;->setFlags(I)V

    .line 18
    .line 19
    .line 20
    return v4

    .line 21
    :cond_1
    invoke-virtual {v0}, LO0/d;->u()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    iget-object v1, p0, LO0/c;->G:LO0/U;

    .line 26
    .line 27
    invoke-interface {v1, p1, p2, p3}, LO0/U;->r(LB0/Z;Lw0/g;I)I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    const/4 v1, -0x5

    .line 32
    const-wide/high16 v7, -0x8000000000000000L

    .line 33
    .line 34
    if-ne p3, v1, :cond_6

    .line 35
    .line 36
    iget-object p2, p1, LB0/Z;->b:Lm0/t;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget p3, p2, Lm0/t;->K:I

    .line 42
    .line 43
    iget v2, p2, Lm0/t;->J:I

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    if-eqz p3, :cond_5

    .line 48
    .line 49
    :cond_2
    iget-wide v3, v0, LO0/d;->K:J

    .line 50
    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    cmp-long v10, v3, v5

    .line 55
    .line 56
    if-eqz v10, :cond_3

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    :cond_3
    iget-wide v3, v0, LO0/d;->L:J

    .line 60
    .line 61
    cmp-long v0, v3, v7

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    const/4 p3, 0x0

    .line 66
    :cond_4
    invoke-virtual {p2}, Lm0/t;->a()Lm0/s;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iput v2, p2, Lm0/s;->I:I

    .line 71
    .line 72
    iput p3, p2, Lm0/s;->J:I

    .line 73
    .line 74
    invoke-virtual {p2}, Lm0/s;->a()Lm0/t;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iput-object p2, p1, LB0/Z;->b:Lm0/t;

    .line 79
    .line 80
    :cond_5
    return v1

    .line 81
    :cond_6
    iget-wide v0, v0, LO0/d;->L:J

    .line 82
    .line 83
    cmp-long p1, v0, v7

    .line 84
    .line 85
    if-eqz p1, :cond_9

    .line 86
    .line 87
    if-ne p3, v4, :cond_7

    .line 88
    .line 89
    iget-wide v9, p2, Lw0/g;->K:J

    .line 90
    .line 91
    cmp-long p1, v9, v0

    .line 92
    .line 93
    if-gez p1, :cond_8

    .line 94
    .line 95
    :cond_7
    if-ne p3, v2, :cond_9

    .line 96
    .line 97
    cmp-long p1, v5, v7

    .line 98
    .line 99
    if-nez p1, :cond_9

    .line 100
    .line 101
    iget-boolean p1, p2, Lw0/g;->J:Z

    .line 102
    .line 103
    if-nez p1, :cond_9

    .line 104
    .line 105
    :cond_8
    invoke-virtual {p2}, Lw0/g;->clear()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v3}, Lw0/a;->setFlags(I)V

    .line 109
    .line 110
    .line 111
    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, LO0/c;->H:Z

    .line 113
    .line 114
    return v4

    .line 115
    :cond_9
    return p3
.end method
