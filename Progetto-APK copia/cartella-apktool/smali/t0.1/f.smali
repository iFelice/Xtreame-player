.class public final Lt0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/h;


# instance fields
.field public a:Lt0/b;

.field public b:Ls0/t;

.field public c:Lt0/d;

.field public d:Z

.field public e:Ls0/h;

.field public f:I


# virtual methods
.method public final a()Ls0/i;
    .locals 8

    .line 1
    iget-object v0, p0, Lt0/f;->e:Ls0/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ls0/h;->a()Ls0/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v4, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v4, v1

    .line 13
    :goto_0
    iget v7, p0, Lt0/f;->f:I

    .line 14
    .line 15
    iget-object v3, p0, Lt0/f;->a:Lt0/b;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lt0/f;->d:Z

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v0, p0, Lt0/f;->c:Lt0/d;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    new-instance v1, Lt0/e;

    .line 32
    .line 33
    iget-object v2, v0, Lt0/d;->J:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Lt0/b;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-wide v5, v0, Lt0/d;->I:J

    .line 41
    .line 42
    iget v0, v0, Lt0/d;->H:I

    .line 43
    .line 44
    invoke-direct {v1, v2, v5, v6, v0}, Lt0/e;-><init>(Lt0/b;JI)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_1
    move-object v6, v1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    new-instance v1, Lt0/e;

    .line 50
    .line 51
    const-wide/32 v5, 0x500000

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x5000

    .line 55
    .line 56
    invoke-direct {v1, v3, v5, v6, v0}, Lt0/e;-><init>(Lt0/b;JI)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :goto_2
    new-instance v0, Lt0/g;

    .line 61
    .line 62
    iget-object v1, p0, Lt0/f;->b:Ls0/t;

    .line 63
    .line 64
    invoke-virtual {v1}, Ls0/t;->a()Ls0/i;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    move-object v2, v0

    .line 69
    invoke-direct/range {v2 .. v7}, Lt0/g;-><init>(Lt0/b;Ls0/i;Ls0/i;Lt0/e;I)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method
