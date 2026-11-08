.class public final LU0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/P;


# instance fields
.field public final synthetic a:LU0/x;


# direct methods
.method public constructor <init>(LU0/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LU0/o;->a:LU0/x;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, LU0/o;->a:LU0/x;

    .line 2
    .line 3
    iget-object v0, v0, LU0/x;->n:Lm0/v0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    check-cast v0, LA0/Y;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, LA0/Y;->b(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final skip()V
    .locals 3

    .line 1
    iget-object v0, p0, LU0/o;->a:LU0/x;

    .line 2
    .line 3
    iget-object v0, v0, LU0/x;->n:Lm0/v0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, -0x2

    .line 9
    .line 10
    check-cast v0, LA0/Y;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, LA0/Y;->b(J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
