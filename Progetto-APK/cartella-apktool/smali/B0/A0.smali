.class public final LB0/A0;
.super LO0/n;
.source "SourceFile"


# instance fields
.field public final c:Lm0/e0;


# direct methods
.method public constructor <init>(Lm0/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LO0/n;-><init>(Lm0/f0;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lm0/e0;

    .line 5
    .line 6
    invoke-direct {p1}, Lm0/e0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LB0/A0;->c:Lm0/e0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(ILm0/d0;Z)Lm0/d0;
    .locals 7

    .line 1
    iget-object v0, p0, LO0/n;->b:Lm0/f0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lm0/f0;->g(ILm0/d0;Z)Lm0/d0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p3, p1, Lm0/d0;->c:I

    .line 8
    .line 9
    iget-object v1, p0, LB0/A0;->c:Lm0/e0;

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    invoke-virtual {v0, p3, v1, v2, v3}, Lm0/f0;->n(ILm0/e0;J)Lm0/e0;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3}, Lm0/e0;->a()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    const/4 v0, 0x1

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    iget-object p3, p2, Lm0/d0;->a:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v1, p2, Lm0/d0;->b:Ljava/lang/Object;

    .line 27
    .line 28
    iget v2, p2, Lm0/d0;->c:I

    .line 29
    .line 30
    iget-wide v3, p2, Lm0/d0;->d:J

    .line 31
    .line 32
    iget-wide v5, p2, Lm0/d0;->e:J

    .line 33
    .line 34
    sget-object p2, Lm0/c;->c:Lm0/c;

    .line 35
    .line 36
    iput-object p3, p1, Lm0/d0;->a:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object v1, p1, Lm0/d0;->b:Ljava/lang/Object;

    .line 39
    .line 40
    iput v2, p1, Lm0/d0;->c:I

    .line 41
    .line 42
    iput-wide v3, p1, Lm0/d0;->d:J

    .line 43
    .line 44
    iput-wide v5, p1, Lm0/d0;->e:J

    .line 45
    .line 46
    iput-object p2, p1, Lm0/d0;->g:Lm0/c;

    .line 47
    .line 48
    iput-boolean v0, p1, Lm0/d0;->f:Z

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iput-boolean v0, p1, Lm0/d0;->f:Z

    .line 52
    .line 53
    :goto_0
    return-object p1
.end method
