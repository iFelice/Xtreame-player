.class public final synthetic La3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic G:J

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(La3/j;Ljava/lang/Iterable;LU2/i;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La3/h;->H:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, La3/h;->I:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, La3/h;->J:Ljava/lang/Object;

    .line 9
    .line 10
    iput-wide p4, p0, La3/h;->G:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, La3/h;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La3/j;

    .line 4
    .line 5
    iget-object v1, p0, La3/h;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/Iterable;

    .line 8
    .line 9
    iget-object v2, p0, La3/h;->J:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, LU2/i;

    .line 12
    .line 13
    iget-object v3, v0, La3/j;->c:Lb3/d;

    .line 14
    .line 15
    check-cast v3, Lb3/j;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v5, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    .line 34
    .line 35
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lb3/j;->b0(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v4, LO0/A;

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    const-string v6, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    .line 53
    .line 54
    invoke-direct {v4, v3, v1, v6, v5}, LO0/A;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Lb3/j;->N(Lb3/h;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object v0, v0, La3/j;->g:Ld3/a;

    .line 61
    .line 62
    check-cast v0, Ld3/c;

    .line 63
    .line 64
    invoke-virtual {v0}, Ld3/c;->a()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    iget-wide v4, p0, La3/h;->G:J

    .line 69
    .line 70
    add-long/2addr v0, v4

    .line 71
    new-instance v4, LC0/y;

    .line 72
    .line 73
    invoke-direct {v4, v0, v1, v2}, LC0/y;-><init>(JLU2/i;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Lb3/j;->N(Lb3/h;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    return-object v0
.end method
