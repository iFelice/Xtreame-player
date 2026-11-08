.class public final LZ6/b;
.super Ljava/text/Format;
.source "SourceFile"


# static fields
.field public static final I:LZ6/a;


# instance fields
.field public final G:LZ6/C;

.field public final H:LZ6/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LZ6/a;

    .line 2
    .line 3
    invoke-direct {v0}, LZ6/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LZ6/b;->I:LZ6/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LZ6/C;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, LZ6/C;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LZ6/b;->G:LZ6/C;

    .line 10
    .line 11
    new-instance v0, LZ6/m;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p3}, LZ6/m;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LZ6/b;->H:LZ6/m;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;)LZ6/b;
    .locals 2

    .line 1
    sget-object v0, LZ6/b;->I:LZ6/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, LZ6/a;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, LZ6/b;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .line 1
    iget-object v0, p0, LZ6/b;->H:LZ6/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/text/ParsePosition;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, LZ6/m;->b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    sget-object v2, LZ6/m;->M:Ljava/util/Locale;

    .line 19
    .line 20
    iget-object v0, v0, LZ6/m;->I:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    new-instance v2, Ljava/text/ParseException;

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, "(The "

    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " locale does not support dates before 1868 AD)\nUnparseable date: \""

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-direct {v2, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    throw v2

    .line 60
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    .line 61
    .line 62
    const-string v2, "Unparseable date: "

    .line 63
    .line 64
    invoke-static {v2, p1}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_1
    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LZ6/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, LZ6/b;

    .line 8
    .line 9
    iget-object v0, p0, LZ6/b;->G:LZ6/C;

    .line 10
    .line 11
    iget-object p1, p1, LZ6/b;->G:LZ6/C;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, LZ6/C;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    .line 1
    iget-object p3, p0, LZ6/b;->G:LZ6/C;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Ljava/util/Date;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Ljava/util/Date;

    .line 11
    .line 12
    invoke-virtual {p3, p1}, LZ6/C;->c(Ljava/util/Date;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iget-object v2, p3, LZ6/C;->H:Ljava/util/TimeZone;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    check-cast p1, Ljava/util/Calendar;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    iget v3, p3, LZ6/C;->K:I

    .line 29
    .line 30
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/util/Calendar;

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p3, p3, LZ6/C;->J:[LZ6/s;

    .line 53
    .line 54
    array-length v2, p3

    .line 55
    :goto_0
    if-ge v1, v2, :cond_2

    .line 56
    .line 57
    aget-object v3, p3, v1

    .line 58
    .line 59
    invoke-interface {v3, v0, p1}, LZ6/s;->a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    check-cast p1, Ljava/lang/Long;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    iget-object p1, p3, LZ6/C;->I:Ljava/util/Locale;

    .line 81
    .line 82
    invoke-static {v2, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    iget v2, p3, LZ6/C;->K:I

    .line 92
    .line 93
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 94
    .line 95
    .line 96
    iget-object p3, p3, LZ6/C;->J:[LZ6/s;

    .line 97
    .line 98
    array-length v2, p3

    .line 99
    :goto_1
    if-ge v1, v2, :cond_4

    .line 100
    .line 101
    aget-object v3, p3, v1

    .line 102
    .line 103
    invoke-interface {v3, v0, p1}, LZ6/s;->a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    return-object p2

    .line 117
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    if-nez p1, :cond_6

    .line 120
    .line 121
    const-string p1, "<null>"

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    :goto_3
    const-string p3, "Unknown class: "

    .line 133
    .line 134
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, LZ6/b;->G:LZ6/C;

    .line 2
    .line 3
    invoke-virtual {v0}, LZ6/C;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LZ6/b;->H:LZ6/m;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LZ6/m;->b(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FastDateFormat["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, LZ6/b;->G:LZ6/C;

    .line 9
    .line 10
    iget-object v2, v1, LZ6/C;->G:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ","

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v3, v1, LZ6/C;->I:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, LZ6/C;->H:Ljava/util/TimeZone;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "]"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
