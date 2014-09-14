base-testing
============
Example framework for UI tests of Base CRM. Ruby 2.0 + Watir webdriver playground that implements the following:

"Write an automated test in your language and framework of choice which does the following:

1. Log into the Web version of Base.
2. Create a new Lead.
3. Check that its Lead status is "New"
3. Go into Settings / Leads / Lead statuses and change the name of the "New" status to a different name.
4. Go back to the Lead to check if the name change is reflected.

### Running
**Make sure to replace the following placeholders in \config\environments\futuresimple.yml with your credentials:**

* `put_your_evaluation_email_here`
* `put_your_evaluation_password_here`