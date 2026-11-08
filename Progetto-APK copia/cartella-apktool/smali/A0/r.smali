.class public final synthetic LA0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/g0;


# instance fields
.field public final synthetic a:LA0/x;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(LA0/x;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/r;->a:LA0/x;

    .line 5
    .line 6
    iput-wide p2, p0, LA0/r;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, LA0/r;->a:LA0/x;

    .line 2
    .line 3
    iget-object v8, v0, LA0/x;->k:LA0/D;

    .line 4
    .line 5
    iget-object v1, v8, LA0/D;->h:LA0/h0;

    .line 6
    .line 7
    invoke-virtual {v1}, LA0/h0;->h()V

    .line 8
    .line 9
    .line 10
    iget-boolean v1, v8, LA0/D;->n:Z

    .line 11
    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v9, v8, LA0/D;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 18
    .line 19
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {v9}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, LA0/c0;

    .line 31
    .line 32
    iget-object v3, v1, LA0/c0;->a:Lm0/v;

    .line 33
    .line 34
    iget-object v2, v0, LA0/x;->c:LF/i;

    .line 35
    .line 36
    iget-wide v6, p0, LA0/r;->b:J

    .line 37
    .line 38
    iget-wide v4, v1, LA0/c0;->b:J

    .line 39
    .line 40
    move-object v1, v8

    .line 41
    invoke-virtual/range {v1 .. v7}, LA0/D;->h(LF/i;Lm0/v;JJ)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-boolean v0, v8, LA0/D;->r:Z

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, v8, LA0/D;->u:LA0/t;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, LA0/t;->a()V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, v8, LA0/D;->r:Z

    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method
