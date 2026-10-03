.class public final LE0/o;
.super LP0/b;
.source "SourceFile"


# instance fields
.field public final J:LE0/n;


# direct methods
.method public constructor <init>(LE0/n;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, LP0/b;-><init>(JJ)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE0/o;->J:LE0/n;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final q()J
    .locals 3

    .line 1
    invoke-virtual {p0}, LP0/b;->a()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, LP0/b;->I:J

    .line 5
    .line 6
    iget-object v2, p0, LE0/o;->J:LE0/n;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1}, LE0/n;->f(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public final t()J
    .locals 3

    .line 1
    invoke-virtual {p0}, LP0/b;->a()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, LP0/b;->I:J

    .line 5
    .line 6
    iget-object v2, p0, LE0/o;->J:LE0/n;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1}, LE0/n;->e(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method
