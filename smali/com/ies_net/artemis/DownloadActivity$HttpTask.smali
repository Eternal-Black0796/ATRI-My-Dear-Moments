.class Lcom/ies_net/artemis/DownloadActivity$HttpTask;
.super Landroid/os/AsyncTask;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ies_net/artemis/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/AlertDialog$Builder;

.field private length:J

.field private progress:Landroid/app/ProgressDialog;

.field private resumeYesNo:I

.field private start:J

.field final synthetic this$0:Lcom/ies_net/artemis/DownloadActivity;

.field private urlIndex:I

.field private urlTotal:I


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/DownloadActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->start:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/ies_net/artemis/DownloadActivity$HttpTask;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->resumeYesNo:I

    return p1
.end method

.method static synthetic access$500(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)Landroid/app/ProgressDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->progress:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$602(Lcom/ies_net/artemis/DownloadActivity$HttpTask;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->progress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->urlIndex:I

    return p0
.end method

.method static synthetic access$800(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->urlTotal:I

    return p0
.end method

.method static synthetic access$900(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->length:J

    return-wide v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 33
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "|"

    const-string v2, "OK"

    const-string v3, "Download failed"

    const/4 v4, 0x0

    .line 47
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v6}, Lcom/ies_net/artemis/DownloadActivity;->access$000(Lcom/ies_net/artemis/DownloadActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 50
    iget-object v5, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v5}, Lcom/ies_net/artemis/DownloadActivity;->access$100(Lcom/ies_net/artemis/DownloadActivity;)Lcom/ies_net/artemis/DownloadActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ies_net/artemis/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    new-instance v6, Ljava/util/StringTokenizer;

    iget-object v7, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v7}, Lcom/ies_net/artemis/DownloadActivity;->access$200(Lcom/ies_net/artemis/DownloadActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 56
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_0
    new-instance v6, Ljava/util/StringTokenizer;

    iget-object v8, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v8}, Lcom/ies_net/artemis/DownloadActivity;->access$300(Lcom/ies_net/artemis/DownloadActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 61
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 63
    iput v6, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->urlIndex:I

    .line 64
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    iput v8, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->urlTotal:I

    .line 66
    :goto_2
    iget v8, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->urlIndex:I

    iget v9, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->urlTotal:I

    if-ge v8, v9, :cond_11

    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v9}, Lcom/ies_net/artemis/DownloadActivity;->access$000(Lcom/ies_net/artemis/DownloadActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->urlIndex:I

    invoke-virtual {v1, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 71
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    cmp-long v14, v9, v12

    if-lez v14, :cond_2

    move-object/from16 v16, v5

    move-object/from16 p1, v7

    const/4 v13, 0x0

    goto/16 :goto_8

    .line 76
    :cond_2
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ".download"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v10, Ljava/net/URL;

    iget v14, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->urlIndex:I

    invoke-virtual {v7, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v10, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    const/16 v14, 0x2710

    .line 83
    invoke-virtual {v10, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 84
    invoke-virtual {v10, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v14, "Android-ID"

    .line 87
    invoke-virtual {v10, v14, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    cmp-long v16, v14, v12

    if-lez v16, :cond_5

    .line 91
    iput v6, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->resumeYesNo:I

    .line 94
    new-instance v14, Landroid/app/AlertDialog$Builder;

    iget-object v15, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v15}, Lcom/ies_net/artemis/DownloadActivity;->access$100(Lcom/ies_net/artemis/DownloadActivity;)Lcom/ies_net/artemis/DownloadActivity;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v14, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 98
    iget-object v14, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    const-string v15, "Download"

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 99
    iget-object v14, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    const-string v15, "Do you want to resume the download?"

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 101
    iget-object v14, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    const-string v15, "Yes"

    new-instance v6, Lcom/ies_net/artemis/DownloadActivity$HttpTask$1;

    invoke-direct {v6, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$1;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v14, v15, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    iget-object v6, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    const-string v14, "No"

    new-instance v15, Lcom/ies_net/artemis/DownloadActivity$HttpTask$2;

    invoke-direct {v15, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$2;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v6, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    iget-object v6, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    new-instance v14, Lcom/ies_net/artemis/DownloadActivity$HttpTask$3;

    invoke-direct {v14, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$3;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v6, v14}, Lcom/ies_net/artemis/DownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :goto_3
    :try_start_1
    iget v6, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->resumeYesNo:I

    if-nez v6, :cond_3

    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 114
    :catch_0
    :cond_3
    :try_start_2
    iput-object v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    .line 116
    iget v6, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->resumeYesNo:I

    if-lez v6, :cond_4

    .line 118
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    iput-wide v14, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->start:J

    const-string v6, "Range"

    .line 120
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v16, v5

    iget-wide v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->start:J

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v6, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object/from16 v16, v5

    .line 123
    iput-wide v12, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->start:J

    .line 125
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 126
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    goto :goto_4

    :cond_5
    move-object/from16 v16, v5

    .line 130
    iput-wide v12, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->start:J

    .line 132
    :goto_4
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 136
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_7

    const/16 v5, 0xce

    if-ne v4, v5, :cond_6

    goto :goto_5

    .line 292
    :cond_6
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 295
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v5}, Lcom/ies_net/artemis/DownloadActivity;->access$100(Lcom/ies_net/artemis/DownloadActivity;)Lcom/ies_net/artemis/DownloadActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    .line 298
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 300
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    const-string v5, "Download failed (%d)"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 302
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/ies_net/artemis/DownloadActivity$HttpTask$12;

    invoke-direct {v4, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$12;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/ies_net/artemis/DownloadActivity$HttpTask$13;

    invoke-direct {v4, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$13;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    new-instance v4, Lcom/ies_net/artemis/DownloadActivity$HttpTask$14;

    invoke-direct {v4, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$14;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v4}, Lcom/ies_net/artemis/DownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    return-object v1

    .line 140
    :cond_7
    :goto_5
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->length:J

    cmp-long v6, v4, v12

    if-gtz v6, :cond_8

    const-string v4, "X-Content-Length"

    const/4 v5, 0x0

    .line 143
    invoke-virtual {v10, v4, v5}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->length:J

    .line 145
    :cond_8
    iget-wide v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->start:J

    cmp-long v6, v4, v12

    if-lez v6, :cond_b

    const-string v4, "Content-Range"

    .line 147
    invoke-virtual {v10, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v5, "bytes +([0-9]+)-([0-9]+)/([0-9*]+)"

    .line 151
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iget-wide v11, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->start:J

    cmp-long v13, v4, v11

    if-eqz v13, :cond_b

    .line 155
    :cond_9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v4}, Lcom/ies_net/artemis/DownloadActivity;->access$100(Lcom/ies_net/artemis/DownloadActivity;)Lcom/ies_net/artemis/DownloadActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    const-string v4, "Resume download failed."

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 162
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/ies_net/artemis/DownloadActivity$HttpTask$4;

    invoke-direct {v4, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$4;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/ies_net/artemis/DownloadActivity$HttpTask$5;

    invoke-direct {v4, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$5;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    new-instance v4, Lcom/ies_net/artemis/DownloadActivity$HttpTask$6;

    invoke-direct {v4, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$6;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v4}, Lcom/ies_net/artemis/DownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    return-object v1

    :cond_a
    move-wide v4, v12

    .line 187
    iput-wide v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->start:J

    .line 190
    :cond_b
    iget-wide v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->length:J

    const-wide/16 v11, 0x0

    cmp-long v13, v4, v11

    if-lez v13, :cond_c

    .line 192
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v5}, Lcom/ies_net/artemis/DownloadActivity;->access$000(Lcom/ies_net/artemis/DownloadActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 194
    iget-wide v11, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->length:J

    .line 196
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v13, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long v13, v13, v4

    cmp-long v4, v11, v13

    if-lez v4, :cond_c

    .line 200
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v4}, Lcom/ies_net/artemis/DownloadActivity;->access$100(Lcom/ies_net/artemis/DownloadActivity;)Lcom/ies_net/artemis/DownloadActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 205
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    const-string v4, "There is not enough storage space.\n\nRequire %d Bytes.\nAvailable %d Bytes."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v6, 0x1

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 207
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/ies_net/artemis/DownloadActivity$HttpTask$7;

    invoke-direct {v4, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$7;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/ies_net/artemis/DownloadActivity$HttpTask$8;

    invoke-direct {v4, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$8;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    new-instance v4, Lcom/ies_net/artemis/DownloadActivity$HttpTask$9;

    invoke-direct {v4, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$9;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v4}, Lcom/ies_net/artemis/DownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    return-object v1

    .line 232
    :cond_c
    iget-object v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    new-instance v5, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;

    invoke-direct {v5, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$10;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v4, v5}, Lcom/ies_net/artemis/DownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 259
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 261
    new-instance v5, Ljava/io/BufferedInputStream;

    const/high16 v11, 0x100000

    invoke-direct {v5, v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 263
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v12, v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v12, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-array v11, v11, [B

    .line 267
    invoke-virtual {v5, v11}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12

    :goto_6
    const/4 v13, -0x1

    if-eq v12, v13, :cond_f

    const/4 v13, 0x0

    .line 269
    invoke-virtual {v4, v11, v13, v12}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 271
    iget-object v14, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->progress:Landroid/app/ProgressDialog;

    if-eqz v14, :cond_d

    move-object/from16 p1, v7

    iget-wide v6, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->length:J

    const-wide/16 v17, 0x0

    cmp-long v19, v6, v17

    if-lez v19, :cond_e

    invoke-virtual {v14, v12}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_7

    :cond_d
    move-object/from16 p1, v7

    const-wide/16 v17, 0x0

    .line 267
    :cond_e
    :goto_7
    invoke-virtual {v5, v11}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12

    move-object/from16 v7, p1

    goto :goto_6

    :cond_f
    move-object/from16 p1, v7

    const/4 v13, 0x0

    .line 273
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 276
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 277
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 278
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 281
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 283
    iget-object v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->progress:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    new-instance v5, Lcom/ies_net/artemis/DownloadActivity$HttpTask$11;

    invoke-direct {v5, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$11;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v4, v5}, Lcom/ies_net/artemis/DownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 66
    :cond_10
    :goto_8
    iget v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->urlIndex:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->urlIndex:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v7, p1

    move-object/from16 v5, v16

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_11
    move-object v1, v4

    return-object v1

    :catch_1
    const-string v1, "Artemis"

    const-string v2, "Download failed. Unknown exception."

    .line 362
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    const/4 v1, 0x0

    return-object v1

    .line 330
    :catch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-static {v4}, Lcom/ies_net/artemis/DownloadActivity;->access$100(Lcom/ies_net/artemis/DownloadActivity;)Lcom/ies_net/artemis/DownloadActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 335
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 337
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/ies_net/artemis/DownloadActivity$HttpTask$15;

    invoke-direct {v3, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$15;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/ies_net/artemis/DownloadActivity$HttpTask$16;

    invoke-direct {v3, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$16;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 357
    iget-object v1, v0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    new-instance v2, Lcom/ies_net/artemis/DownloadActivity$HttpTask$17;

    invoke-direct {v2, v0}, Lcom/ies_net/artemis/DownloadActivity$HttpTask$17;-><init>(Lcom/ies_net/artemis/DownloadActivity$HttpTask;)V

    invoke-virtual {v1, v2}, Lcom/ies_net/artemis/DownloadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 33
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 370
    iget-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_0

    return-void

    .line 372
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 374
    iget-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/ies_net/artemis/DownloadActivity;->setResult(ILandroid/content/Intent;)V

    .line 375
    iget-object p1, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->this$0:Lcom/ies_net/artemis/DownloadActivity;

    invoke-virtual {p1}, Lcom/ies_net/artemis/DownloadActivity;->finish()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->progress:Landroid/app/ProgressDialog;

    .line 38
    iput-object v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->dialog:Landroid/app/AlertDialog$Builder;

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->start:J

    const-wide/16 v0, -0x1

    .line 40
    iput-wide v0, p0, Lcom/ies_net/artemis/DownloadActivity$HttpTask;->length:J

    return-void
.end method
